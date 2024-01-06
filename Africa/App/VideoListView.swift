//
//  VideoListView.swift
//  Africa
//
//  Created by Mansi Nerkar on 8/16/23.
//

import SwiftUI

struct VideoListView: View {
    // MARK - PROPERTIES
    
    @State var videos: [video] = Bundle.main.decode("videos.json")
    
    let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
    
    //MARK - BODY
    var body: some View {
        NavigationView {
            List{
                ForEach(videos) { item in
                    NavigationLink(destination: VideoPlayerView(videoSelected: item.id, VideoTitle: item.name)) {
                        VideoListItemView(video:item)
                            .padding(.vertical,8)
                    }
                }//: LOOP
            }//: LIST
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("Videos",displayMode: .inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button(action: {
                        //shuffle videos
                        videos.shuffle()
                        
                        hapticImpact.impactOccurred()
                    }){
                        Image(systemName: "arrow.2.squarepath")
                    }
                    
                }
            }
        }//: NAVIGATION
    }
}

// MARK - PREVIEW
struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
