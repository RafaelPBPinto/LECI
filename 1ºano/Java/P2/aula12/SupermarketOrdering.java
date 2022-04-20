import p2utils.HashTable;
import p2utils.Queue;

public class SupermarketOrdering{
    Queue<Order> encomendas = new Queue();
    HashTable<Integer> quant = new HashTable(20);

    public void enterOrder(Order pedido){
        encomendas.in(pedido);

        if(quant.contains(pedido.prodName)){
            quant.set(pedido.prodName, quant.get(pedido.prodName) + pedido.quantity);
        }else{
            quant.set(pedido.prodName, pedido.quantity);
        }
    }

    public Order serveOrder(){
        Order maisantiga = encomendas.peek();
        encomendas.out();

        if(maisantiga.quantity == quant.get(maisantiga.prodName)){
            quant.remove(maisantiga.prodName);
        }else{
            quant.set(maisantiga.prodName, quant.get(maisantiga.prodName) - maisantiga.quantity);
        }

        return maisantiga;
    }

    public int query(String produto){
        if(!quant.contains(produto)){
            return 0;
        }else{
            return quant.get(produto);
        }
    }

    public void displayOrders(){
        String[] produtos = quant.keys();
        System.out.println("Nº de produtos : ");

        for (int i = 0; i < produtos.length; i++) {
			System.out.printf("%s: %d\n", produtos[i], quant.get(produtos[i]));
		}
    }

    public int numOrders(){
		return encomendas.size();
	}
}
    
