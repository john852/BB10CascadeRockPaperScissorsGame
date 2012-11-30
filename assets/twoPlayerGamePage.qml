
import bb.cascades 1.0


// creates one page with a label
Page {
    
    id : twoPlayerPage;
    
    Container {
        id : twoPlayerContainer;
        
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
            text:  "Two Players Mode"   
            textStyle.base: SystemDefaults.TextStyles.BigText
            textStyle.fontSize: FontSize.XXLarge
            textStyle.fontWeight: FontWeight.W900
            textStyle.color: Color.create(1, 1, 1)
        }
        
        
//        Label {
//            id : usName
//            text:  rps.getUserName();
//            textStyle.base: SystemDefaults.TextStyles.BigText
//            textStyle.fontSize: FontSize.XXLarge
//            textStyle.fontWeight: FontWeight.W900
//            textStyle.color: Color.create(1, 1, 1)
//        }
        
//        Label {
//            id : pl2Name
//            text:  player2.getName();  
//            textStyle.base: SystemDefaults.TextStyles.BigText
//            textStyle.fontSize: FontSize.XXLarge
//            textStyle.fontWeight: FontWeight.W900
//            textStyle.color: Color.create(1, 1, 1)
//        }
    
    
    
    }
}
