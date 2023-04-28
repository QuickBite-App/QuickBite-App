import SwiftUI
import MapKit

class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate {
    @Published var searchResults: [MKLocalSearchCompletion] = []

    private var searchCompleter = MKLocalSearchCompleter()
    private var locationManager = CLLocationManager()
    
    override init() {
        super.init()
        locationManager.delegate = self
        searchCompleter.delegate = self
    }
    
    func search(query: String) {
        searchCompleter.queryFragment = query
    }
}

extension LocationManager: MKLocalSearchCompleterDelegate {
    func completerDidUpdateResults(_ completer: MKLocalSearchCompleter) {
        searchResults = completer.results
    }
    
    func completer(_ completer: MKLocalSearchCompleter, didFailWithError error: Error) {
        print("Error: \(error.localizedDescription)")
    }
}

struct PaymentView: View {
    @State private var postcode: String = ""
    @StateObject private var locationManager = LocationManager()
    
    @State private var fullName: String = ""
    @State private var cardNumber: String = ""
    @State private var expiryDate: String = ""
    @State private var cvc: String = ""
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text("Deliver to")
                    .font(.body)
                    .fontWeight(.medium)
                TextField("Select your location", text: $postcode)
                    .padding(EdgeInsets(top: 0, leading: 50, bottom: 0, trailing: 0))
                    .onChange(of: postcode) { newValue in
                        locationManager.search(query: newValue)
                    }
                    .frame(width: .infinity, height: 50)
                    .cornerRadius(15)
                    .overlay(
                        Image("LocationIcon")
                            .frame(width: 30, height: 30)
                            .foregroundColor(.gray)
                            .padding(.leading, 10),
                        alignment: .leading
                    )
                    .overlay(
                         RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.gray, lineWidth: 1)
                     )
            
                

                List(locationManager.searchResults, id: \.title) { result in
                    Text("\(result.title), \(result.subtitle)")
                        .onTapGesture {
                            postcode = result.title
                        }
                }
            }
            
            VStack(alignment: .leading, spacing: 20) {

                VStack(alignment: .leading, spacing: 10) {
                    Text("Name on the card")
                    TextField("John Doe", text: $fullName)
                        .padding()
                        .frame(width: .infinity, height: 50)
                        .cornerRadius(15)
                        .overlay(
                             RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.gray, lineWidth: 1)
                         )
                }
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Card number")
                    TextField("1234 5678 9012 3456", text: $cardNumber)
                        .padding()
                        .frame(width: .infinity, height: 50)
                        .cornerRadius(15)
                        .overlay(
                             RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.gray, lineWidth: 1)
                         )
                        .keyboardType(.numberPad)
                }
                
                HStack(spacing: 20) {
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Expiry date")
                        TextField("MM/YY", text: $expiryDate)
                            .padding()
                            .frame(width: .infinity, height: 50)
                            .cornerRadius(15)
                            .overlay(
                                 RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color.gray, lineWidth: 1)
                             )
                            .keyboardType(.numberPad)
                    }
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text("CVC")
                        TextField("123", text: $cvc)
                            .padding()
                            .frame(width: .infinity, height: 50)
                            .cornerRadius(15)
                            .overlay(
                                 RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color.gray, lineWidth: 1)
                             )
                            .keyboardType(.numberPad)
                    }
                }
            }
            .padding(.top, 20)
            
            VStack {
                Button(action: {
                    // Handle the payment processing
                }) {
                    Text("Submit")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(8)
                }
            }
            
            .frame(width: UIScreen.main.bounds.width, height: 206)
            .cornerRadius(16)
            .background(Color.red)
        }
        .padding()
    }
}


struct PaymentView_Previews: PreviewProvider {
    static var previews: some View {
        PaymentView()
    }
}
