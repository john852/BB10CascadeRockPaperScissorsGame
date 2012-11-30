import bb.cascades 1.0


// creates one page with a label
Page {
    
        id : fourPlayerPage;
        
        Container {
            id : fourPlayerContainer;
            
            background: backgroundImage.imagePaint
            attachedObjects: [
                ImagePaintDefinition {
                    id: backgroundImage
                    repeatPattern: RepeatPattern.Fill
                    imageSource: "asset:///images/background/greenB2.amd"
                }
            ]
            
            Label {
                id : title
                text:  "Four Players Mode"   
                textStyle.base: SystemDefaults.TextStyles.BigText
                textStyle.fontSize: FontSize.XXLarge
                textStyle.fontWeight: FontWeight.W900
                textStyle.color: Color.create(1, 1, 1)
            }
        
        
        
        }
}