package com.bean;

public class BlockchainDemo {
    public static void main(String[] args) {
        Blockchain blockchain = new Blockchain();
        
        System.out.println("Creating new blocks...");
        
        // Adding new blocks to the blockchain
        blockchain.addBlock(new Block("Block 1 data", blockchain.getLatestBlock().hash));
        blockchain.addBlock(new Block("Block 2 data", blockchain.getLatestBlock().hash));
        
        // Printing the blockchain
        blockchain.printBlockchain();
    }
}