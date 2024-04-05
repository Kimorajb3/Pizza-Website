/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Business;

/**
 *
 * @author bellk
 */
public class OrderList {
    
    public int count = 0;  
    public Order orderList[] = new Order[10];
    
    public void addOrders(Order o1){
    orderList[count] = o1;
    count++;
    }
    
    public void displayList() {
	for (int x=0; x<count; x++) {
		orderList[x].Display(); 
	} 
    }
    
    public static void main(String args[]) { 

	OrderList orderList = new OrderList();

	Order o = new Order("4", "3", "1", "24,44,52", "Pick up");
	

	orderList.addOrders(o);

	orderList.displayList();

}
}
