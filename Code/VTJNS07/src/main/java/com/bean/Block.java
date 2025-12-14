package com.bean;

import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.List;

public class Block {

	public String hash;
    public String previousHash;
    private String data;
    private long timeStamp;

    // Constructor to initialize a new block
    public Block(String data, String previousHash) {
        this.data = data;
        this.previousHash = previousHash;
        this.timeStamp = System.currentTimeMillis();
        this.hash = calculateHash();
    }

    // Method to calculate the hash of the block using SHA-256
    public String calculateHash() {
        String input = previousHash + Long.toString(timeStamp) + data;
        return applySha256(input);
    }

    // Method to apply SHA-256 hash function
    private static String applySha256(String input) {
        try {
            MessageDigest digest = MessageDigest.getInstance("SHA-256");
            byte[] hashBytes = digest.digest(input.getBytes("UTF-8"));
            StringBuilder hexString = new StringBuilder();
            for (byte b : hashBytes) {
                String hex = Integer.toHexString(0xff & b);
                if (hex.length() == 1) hexString.append('0');
                hexString.append(hex);
            }
            return hexString.toString();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}

class Blockchain {
    private List<Block> chain;

    // Constructor to initialize the blockchain with a genesis block
    public Blockchain() {
        this.chain = new ArrayList<Block>();
        // Add the first block (genesis block)
        this.chain.add(createGenesisBlock());
    }

    // Method to create the genesis block (the first block in the chain)
    private Block createGenesisBlock() {
        return new Block("Genesis Block", "0");
    }

    
    public Block getLatestBlock() {
        return chain.get(chain.size() - 1);
    }

  
    public void addBlock(Block newBlock) {
        newBlock.previousHash = getLatestBlock().hash;
        newBlock.hash = newBlock.calculateHash();
        chain.add(newBlock);
    }

    // Method to display the blockchain
    public void printBlockchain() {
        for (Block block : chain) {
            System.out.println("Block hash: " + block.hash);
            System.out.println("Previous hash: " + block.previousHash);
          
    }
}


}
