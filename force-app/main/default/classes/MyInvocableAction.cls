public class MyInvocableAction {
    
    @InvocableMethod(label='Create fullname action')
    public static List<MyInvocableActionOutput> execute(List<MyInvocableActionInput> inputs) {
        List<MyInvocableActionOutput> result = new List<MyInvocableActionOutput>();

        for (MyInvocableActionInput input : inputs) {
            MyInvocableActionOutput output = new MyInvocableActionOutput();
            result.add(output);
            
            MyInvocableActionFullname firstLast = new MyInvocableActionFullname();
            firstLast.fullname = 'Action output: ' + input.fn + ' ' + input.ln + ' 🥰';
            firstLast.key = UUID.randomUUID().toString();
            output.fullnames.names.add(firstLast);

            MyInvocableActionFullname lastFirst = new MyInvocableActionFullname();
            lastFirst.fullname = 'Action output: ' + input.ln + ', ' + input.fn + ' 🥰';
            lastFirst.key = UUID.randomUUID().toString();
            output.fullnames.names.add(lastFirst);
        }

        return result;
    }

    public class MyInvocableActionInput {
        @InvocableVariable(label='Firstname' required=true)
        public String fn;

        @InvocableVariable(label='Lastname' required=true)
        public String ln;
    }
    
    public class MyInvocableActionOutput {
        @InvocableVariable
        public MyInvocableActionFullnames fullnames = new MyInvocableActionFullnames();
    }

    public class MyInvocableActionFullnames {
        public List<MyInvocableActionFullname> names = new List<MyInvocableActionFullname>();
    }

    public class MyInvocableActionFullname {
        @InvocableVariable(label='Fullname' required=true)
        public String fullname;
        
        @InvocableVariable(label='Key' required=true)
        public String key;
    }
}