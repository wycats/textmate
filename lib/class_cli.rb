module CLI
  def self.extended(klass)
    klass.class_eval <<-RUBY
      def self.method_added(meth)
        return if !public_instance_methods.include?(meth.to_s) || !@@usage
        @@descriptions               = defined?(@@descriptions) ? @@descriptions : []
        @@usages                     = defined?(@@usages) ? @@usages : []
        @@descriptions              << [meth.to_s, @@desc]
        @@usages                    << [meth.to_s, @@usage]
        @@usage, @@desc              = nil    
      end

      def self.desc(usage, description)
        @@usage, @@desc = usage, description
      end

      def self.start
        new(ARGV[0], ARGV[1..-1])
      end

      def initialize(op, params)
        send(op.to_sym, *params) if public_methods.include?(op)
      end
      
      desc "help", "show this screen"
      def help
        puts "Options"
        puts "-------"
        max_usage = @@usages.max {|x,y| x.last.to_s.size <=> y.last.to_s.size}.last.size
        max_desc  = @@descriptions.max {|x,y| x.last.to_s.size <=> y.last.to_s.size}.last.size
        @@usages.each do |meth, usage|
          format = "%-" + (max_usage + 3).to_s + "s"
          print format % @@usages.assoc(meth)[1]
          puts  @@descriptions.assoc(meth)[1]      
        end
      end      
    RUBY
  end
end
