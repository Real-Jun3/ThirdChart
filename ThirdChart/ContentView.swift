//
//  ContentView.swift
//  ThirdChart
//
//  Created by JUN? on 2021/03/13.
//
import SwiftUICharts
import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack{
                    // Legend
                    let LoveHoroscope = Legend(color: .blue
                                          , label: "Love horoscope")
                    let Business = Legend(color: .red
                                          , label: "Business")
                    let career = Legend(color: .pink
                                          , label: "career")
                    let Fame = Legend(color: .green
                                          , label: "Fame")
                    let WellBeing = Legend(color: .orange
                                          , label: "WellBeing")
                    let Luck = Legend(color: .yellow
                                          , label: "Luck")
                    let Lifespan = Legend(color: .purple
                                          , label: "Lifespan")
                    // DataPoint (link upper datas)
                    let points: [DataPoint] = [
                        .init(value: 37, label: "37", legend: LoveHoroscope),
                        .init(value: 23, label: "23", legend: Business),
                        .init(value: 13, label: "13", legend: career),
                        .init(value: 14, label: "14", legend: Fame),
                        .init(value: 27, label: "27", legend: WellBeing),
                        .init(value: 16, label: "16", legend: Luck),
                        .init(value: 19, label: "19", legend: Lifespan),
                    ]
                    
                    // line (link upper 'points')
                    //LineChartView(dataPoints: points)
                        //.padding()
                    
                    //another way of line
                    Section(header: Text("Line Chart")) {
                        LineChartView(dataPoints: points)
                            .frame(height: UIScreen.main.bounds.size.height/3)
                            .padding()
                            .background(Color(.secondarySystemBackground))
                    }
                    
                    // Bar
                    Section(header: Text("Bar Chart")) {
                        BarChartView(dataPoints: points)
                            .frame(height: UIScreen.main.bounds.size.height/3)
                            .padding()
                    }
                    
                    //Horizontal
                    Section(header: Text("Horizontal Bar Chart")) {
                        HorizontalBarChartView(dataPoints: points)
                            .frame(height: UIScreen.main.bounds.size.height/3)
                            .padding()
                    }
                }
            }
            .navigationTitle("Charts & Graphs")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
