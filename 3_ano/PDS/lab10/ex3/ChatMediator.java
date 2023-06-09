//Author: Rafael Pinto, 103379, p5_09

package ex3;

public class ChatMediator {
    
    public void sendMessage(Message message) {
        User sender = message.getSender();
        User receiver = message.getReceiver();
        if (sender.hasPermission(message.getType())) {
            if (sender.isBlocked())
                System.out.println("User " + sender.getUsername() + " is blocked.");
            else if (receiver.isBlocked() && message.getType() != MessageType.UNBLOCK)
                System.out.println("User " + receiver.getUsername() + " is blocked.");
            else 
                receiver.receiveMessage(message);
            if (message.getType() == MessageType.BLOCK)
                receiver.block();
            else if (message.getType() == MessageType.UNBLOCK)
                receiver.unblock(); 
        } else {
            if(message.getType() != MessageType.NORMAL)
                System.out.println("User " + sender.getUsername() + " does not have permission to " + message.getType() + " users.");
            else
                System.out.println("User " + sender.getUsername() + " does not have permission to send " + message.getType() + " messages.");
        }
    }
}
