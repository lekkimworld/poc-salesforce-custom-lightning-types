public class MyInvocableAction {
    
    @InvocableMethod(label='Create fullname action')
    public static List<MyInvocableActionOutput> execute(List<MyInvocableActionInput> inputs) {
        List<MyInvocableActionOutput> result = new List<MyInvocableActionOutput>();
        for (MyInvocableActionInput input : inputs) {
            MyInvocableActionOutput output = new MyInvocableActionOutput(); 
            output.fullname = 'Action output fullname: ' + input.fn + ' ' + input.ln + ' 🥰';
            result.add(output);
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
        @InvocableVariable(label='Fullname' required=true)
        public String fullname;
    }
}