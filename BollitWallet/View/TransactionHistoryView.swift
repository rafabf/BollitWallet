//
//  TransactionHistoryView.swift
//  BollitWallet
//
//  Created by Rafael Bollit on 25/05/2020.
//  Copyright © 2020 Rafael Bollit. All rights reserved.
//

import SwiftUI

struct TransactionHistoryView: View {
    var body: some View {
       
        VStack(alignment: .leading){
            HStack{
                Spacer()
                Text("Historial de Compras")
                .font(.system(size: 20, weight: .black, design: .rounded))
                Spacer()
            }
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 25){
                    ForEach(transactions){ t in
                        TransactionView(transaction: t)
                    }
                }.padding()
            }
        }
        
        
        
    }
}

struct TransactionView: View{
    var transaction: Transaction
    
    var body: some View {
        
        RoundedRectangle(cornerRadius: 25)
            .foregroundColor(.blue)
            .overlay(
        VStack{
            Spacer()
          
            
            Image(systemName: transaction.icon)
                .font(.system(size: 40))
                .foregroundColor(.white)
                .padding()
            
            Text(transaction.seller)
                .font(.system(.title, design: .rounded))
                .bold()
            
            Text("\(String(format: "%.2f", transaction.amount)) €")
                .font(.system(.title, design: .rounded))
                .bold()
                .padding(.bottom)
            
            Text(transaction.date)
                          .font(.system(.body, design: .rounded))
                          .padding(.top)
            Spacer()
        }
        
        ).frame(width: 220, height: 220)
    }
}

struct TransactionHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            TransactionHistoryView()
            TransactionView(transaction: transactions[0]).previewLayout(.sizeThatFits)
        }
    }
}

