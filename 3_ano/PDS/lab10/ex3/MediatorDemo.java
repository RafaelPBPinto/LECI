//Author: Rafael Pinto, 103379, p5_09

package ex3;

public class MediatorDemo {
    public static void main(String[] args) {
        ChatMediator mediator = new ChatMediator();
        User moderator = new ModeratorUser(mediator, "moderator");
        User user1 = new CommonUser(mediator, "Joao");
        User user2 = new CommonUser(mediator, "Maria");
        User user3 = new CommonUser(mediator, "Rafael");
        User user4 = new CommonUser(mediator, "Matilde");

        user1.sendMessage(new Message(MessageType.NORMAL, "Olá Maria!", user1, user2));             //sent
        user2.sendMessage(new Message(MessageType.NORMAL, "Olá Joao!", user2, user1));              //sent
        user3.sendMessage(new Message(MessageType.NORMAL, "Olá Matilde!", user3, user4));           //sent
        user4.sendMessage(new Message(MessageType.BLOCK, "Xau Rafael!", user4, user3));             //not sent
        moderator.sendMessage(new Message(MessageType.BLOCK, "Xau Matilde!", moderator, user4));    //sent
        user2.sendMessage(new Message(MessageType.NORMAL, "Tudo bem?", user2, user4));              //not sent
        user4.sendMessage(new Message(MessageType.NORMAL, "Tudo e contigo?", user4, user2));        //not sent
        moderator.sendMessage(new Message(MessageType.UNBLOCK, "Bem-vinda de volta Matilde!", moderator, user4)); //sent
        user4.sendMessage(new Message(MessageType.NORMAL, "Obrigada!", user4, moderator));          //sent

    }
}
