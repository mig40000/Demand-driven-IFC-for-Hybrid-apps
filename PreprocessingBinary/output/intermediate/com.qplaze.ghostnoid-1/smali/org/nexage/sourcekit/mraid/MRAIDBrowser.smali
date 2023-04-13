.class public Lorg/nexage/sourcekit/mraid/MRAIDBrowser;
.super Landroid/app/Activity;


# static fields
.field public static final MANAGER_EXTRA:Ljava/lang/String; = "extra_manager"

.field private static final TAG:Ljava/lang/String; = "MraidBrowser"

.field public static final URL_EXTRA:Ljava/lang/String; = "extra_url"


# instance fields
.field private backButton:Landroid/widget/ImageButton;

.field private closeButton:Landroid/widget/ImageButton;

.field private forwardButton:Landroid/widget/ImageButton;

.field private refreshButton:Landroid/widget/ImageButton;

.field private rootLayout:Landroid/widget/RelativeLayout;

.field private supportedNativeFeatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/nexage/sourcekit/mraid/MRAIDBrowser;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDBrowser;->supportedNativeFeatures:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lorg/nexage/sourcekit/mraid/MRAIDBrowser;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDBrowser;->forwardButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$200(Lorg/nexage/sourcekit/mraid/MRAIDBrowser;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDBrowser;->backButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$300(Lorg/nexage/sourcekit/mraid/MRAIDBrowser;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDBrowser;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method private createUi()V
    .locals 8

    const/4 v7, -0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lorg/nexage/sourcekit/mraid/MRAIDBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    iget v4, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "screen "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "x"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", density="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", densityDpi="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sparse-switch v4, :sswitch_data_0

    :goto_0
    const-string v3, "MraidBrowser"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDBrowser;->rootLayout:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lorg/nexage/sourcekit/mraid/MRAIDBrowser;->rootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDBrowser;->rootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDBrowser;->rootLayout:Landroid/widget/RelativeLayout;

    const/high16 v3, -0x10000

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {p0}, Lorg/nexage/sourcekit/mraid/MRAIDBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "iVBORw0KGgoAAAANSUhEUgAAAAEAAAAsCAIAAAArRUU2AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAEFJREFUeNpicPP0Zvr3/z/T/3//gDQQg+i//5j+gum/QBqIQXwg+x+YjckH6fkL0/f3NwMPHz8jKxsbAw0AQIABAGYHPKslk98oAAAAAElFTkSuQmCC"

    invoke-static {v3, v4}, Lorg/nexage/sourcekit/mraid/Assets;->getDrawableFromBase64(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setId(I)V

    ushr-int/lit8 v1, v1, 0x2

    ushr-int/lit8 v3, v1, 0x1

    div-int/lit8 v4, v2, 0xa

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const-string v4, "MraidBrowser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "button size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " min("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    div-int/lit8 v6, v1, 0x2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    div-int/lit8 v2, v2, 0xa

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    ushr-int/lit8 v2, v3, 0x3

    const-string v4, "MraidBrowser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "padding "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "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"

    invoke-virtual {p0, v1, v3, v2, v4}, Lorg/nexage/sourcekit/mraid/MRAIDBrowser;->createButton(IIILjava/lang/String;)Landroid/widget/ImageButton;

    move-result-object v4

    iput-object v4, p0, Lorg/nexage/sourcekit/mraid/MRAIDBrowser;->backButton:Landroid/widget/ImageButton;

    const-string v4, "iVBORw0KGgoAAAANSUhEUgAAABEAAAAUCAYAAABroNZJAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAqNJREFUeNqUlEtrE1EUx8+8EjNT27zTaMw0k6RJGpu+VqIi4k7rQtyKIn6FrEraRhTET+AnENxUXLpWcFfRhaCbCpY0Lc3DpE07c+dxPTckojTG5sAfhnvP/fE/99wz3IV4/Fl1Z+eDZVlVAKigmihjwuejcIpoNZsg+AOBlz6//2E4EonWazUGElC2oesWip7xeIZCMAeEUDhcpBw3LkqubDqdvs1xQNqt1iHucygGshBEh0LQQREBY2fHx8F2HLfkcl1OJKaut1vtCiEGy6M9V/YgWBcSDIWKHM+PyYoMLpcbJEkCYpoT/mDg1rloNF+tVrcwV0Q5PZjzZ4l/QdiGIAjAoxiI43jOtKyYOqXeVRRFrmPgGb5Xot2/rxMQnhe6dA4vRhDFLsymjkApzGta8iYhpNnpdAgrsQ9j3wMh/cB1EAURy3QBsSyPMqbcUFX1UrPRqJimyUAOgw2F9GzhOsLQFXNHiBmMRCeXg8FgfG939wtmtLnszMwuJ4gRr98Hoij993E5jgPoAvSjI1A8ngPT0B+JMGIwV263G2RZhulU8lNle/vdyBAWc4XCdijgv7deKr1nFzsSJB6L6ZnMdHFtZeVFbrbgxBMa/Pi+BaeCeL1eZ3529tWT8vr9iwsLdiKVhka9BqZBuvtDIRJ2Y3Fh/jM4dBkBlVQmSxv7NTAMHWzbBkrpcEg+l9ufjIQflFdX32byeRpTVfiJY29Z5u/D/TgBOR+Nkmw287xcKj2eKczZqqZBs97AthKg2N5B48zjvLOnCzJO6LWrV95g330bG6/XtPS0zeo+aLeBoH3nH4CuE5wTktS0r1pSu/O0XP6WzuZop3OIg2Vg3dYJ64OCW1xamvy4ubmXwsOGfgz68TFY+CIdeqq/Y/f3+EuAAQARwzy3ZhCNHQAAAABJRU5ErkJggg=="

    invoke-virtual {p0, v1, v3, v2, v4}, Lorg/nexage/sourcekit/mraid/MRAIDBrowser;->createButton(IIILjava/lang/String;)Landroid/widget/ImageButton;

    move-result-object v4

    iput-object v4, p0, Lorg/nexage/sourcekit/mraid/MRAIDBrowser;->forwardButton:Landroid/widget/ImageButton;

    const-string v4, "iVBORw0KGgoAAAANSUhEUgAAABMAAAAUCAYAAABvVQZ0AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA2NJREFUeNqMVF1Ik1EYPm7TpsIca84pGs6VrboYaeRPpFgXKUzBH4S8sLoIMVCpRERCAgfSZXpR2ZVJCEIgaIQm+MdCIkXRTTTnQG0qorCFm21zp+f9+IQ5NHvh4eP7vnOe877Ped5Xyv4dEYAMSK2rq/tkt9tlXq83Cu9BwC8+zyQ4B5wHLgAG4M7IyAgfHR31FhcXv8F7EXAZUADSo43SMCLKQimS0GKDTqfLys7OvlldXZ2Vnp4uy8nJuZGWlmacnp52ejyeANZ4AB/AQ4kigSQgT6/XPzebzd8pk4WFBb6+vs6xkVP4/X6+s7PDx8bGPJWVlWasTxGTOJZRInC3oaHh88zMjLDh4OCA+3w+4RkIBPhRHB4e8u3tbd7f38+rqqpM2CcJ1YhKu4Vsvq2urnKIzN1uN3c4HHxqaso1Pj7+Y3d3VyAicqfTyaHhenNzc1Eo0VF5F2traz+srKwIRFtbW3xoaMjW1tZ2X9Q12WazcZfLxefn53lXV9fbiooKjZjIsVAkJSXdIw1IFyqvt7d3pLy8PCFksXJgYIAPDg5aGxsbs8OzCY2E+vr692tra4LIFovld15eXmrYqbKmpiZzuNAnRXJ3d7eVStjc3OQo7ZXos7OC5ImjZAA1EE0nSbRarUYulzNoxeCfb/gW+A+yGEAvuoC8ZieyoFKpVEulUgYPMVy3Qyzn8IwuiYWNXl5FQB4/9r0gIf+gxG34iEVFRbH8/HwSOPakmwovMTMz81JZWZm+oKDAkJiYGENk3o2NjSVYgsXFxbHc3NxCMXX5KYRkFRU2XzEajQZUxSQSCdvb2/tJZAfLy8uDyI4pFApmMpkKNRpNJr7rxEaWiaS0NhrQAuk1NTVPoDWDiRmS2RweHrYK9aO0FPjMvb+/z3EC7+vr+6VWqx/j321xauhEsa8DJjR9NxIQDI6xxFtbW58emx4tLS0PFhcXhT4kwomJCS/67qNKparH/4fAo4yMDHNHR8c8EdDB1J8w+NRJVors7Ox8t7S0JCwkIH1utVr57Owsn5ub49RudBAdSC2HG7SVlJRoT7ssaXt7e+3k5KSLiIiQJgRFMBgUmpzIqE97enq+lJaWhrbciYwRKE+NW32GIVgcHx9/TSaTMfAxkLsx2ywge40J8zV8bP8VYACAQuluULZPjQAAAABJRU5ErkJggg=="

    invoke-virtual {p0, v1, v3, v2, v4}, Lorg/nexage/sourcekit/mraid/MRAIDBrowser;->createButton(IIILjava/lang/String;)Landroid/widget/ImageButton;

    move-result-object v4

    iput-object v4, p0, Lorg/nexage/sourcekit/mraid/MRAIDBrowser;->refreshButton:Landroid/widget/ImageButton;

    const-string v4, "iVBORw0KGgoAAAANSUhEUgAAAA4AAAAOCAYAAAAfSC3RAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAg9JREFUeNp8kk1rWkEUhodc5aJUEbVqJQRcqCUgERottIKYQhdZSEh1pcWFSFd2HdzFhfobpOJCFLEbddONEUUQEUSDxi4KtWIq+LGQanOLFqdnJAO3peTAe+98PXPmvDMMQkgE0ikUilcajca2WCx+Q58DbUAYJARpQccmk+l8Op1CE/0inycqlcqdTCZvi8XincViCcHYEUgKYkH7oNfhcLhRKpWw1+v9AH0zMhgMh6lU6utkMsGQDddqNQo/Az0lUCQSaQyHQ7xcLnGn08GBQOCSsdlsKtB7nU7HSqVSJJfLhWaz+UWv15uPx2M2Go1eeDye51qtFgkEAgQwgvEv5Kh7wWDwZb1e/wGBt9stJv9Wq8Wl0+mb0WiEN5vNTiRrIpHI3deN/guv12vMcdyDEA3W5XKdtdvtnwTix3w+x/F4/BOsUZAkfEhI3ctms9ckEz+gJmy32/lu7/0FgRENWhM/VqsV320Ko8egE2o5rYkcj2QiEDWMwFar9QLWHxLwIBaLlfkQaWcymVwoFLL/63alUrlzOBxvGTDkyOl0Xur1+t09QRYEL+Sjz+fzQIZvYrG4qlar3TKZjBWJRLvSYPNHTL/fvzUajTOlUnlKLrdareb8fr+XvtVms/mdwDDvhqxst9v9nM/nzxgyWS6XW7DreDAYDOE+391DNHawRCK5ms1mmkKh8AY0/SPAAEsFgVbY4GziAAAAAElFTkSuQmCC"

    invoke-virtual {p0, v1, v3, v2, v4}, Lorg/nexage/sourcekit/mraid/MRAIDBrowser;->createButton(IIILjava/lang/String;)Landroid/widget/ImageButton;

    move-result-object v1

    iput-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDBrowser;->closeButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDBrowser;->backButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDBrowser;->forwardButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDBrowser;->refreshButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDBrowser;->closeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDBrowser;->rootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDBrowser;->webView:Landroid/webkit/WebView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x2

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDBrowser;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDBrowser;->rootLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lorg/nexage/sourcekit/mraid/MRAIDBrowser;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void

    :sswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "DENSITY_LOW)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "DENSITY_MEDIUM)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "DENSITY_HIGH)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "DENSITY_XHIGH)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xf0 -> :sswitch_2
        0x140 -> :sswitch_3
    .end sparse-switch
.end method

.method private enableCookies()V
    .locals 1

    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    return-void
.end method

.method private initializeWebView(Landroid/content/Intent;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDBrowser;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDBrowser;->webView:Landroid/webkit/WebView;

    const-string v1, "extra_url"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDBrowser;->webView:Landroid/webkit/WebView;

    new-instance v1, Lorg/nexage/sourcekit/mraid/MRAIDBrowser$1;

    invoke-direct {v1, p0}, Lorg/nexage/sourcekit/mraid/MRAIDBrowser$1;-><init>(Lorg/nexage/sourcekit/mraid/MRAIDBrowser;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDBrowser;->webView:Landroid/webkit/WebView;

    new-instance v1, Lorg/nexage/sourcekit/mraid/MRAIDBrowser$2;

    invoke-direct {v1, p0}, Lorg/nexage/sourcekit/mraid/MRAIDBrowser$2;-><init>(Lorg/nexage/sourcekit/mraid/MRAIDBrowser;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method private setButtonListeners()V
    .locals 2

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDBrowser;->backButton:Landroid/widget/ImageButton;

    new-instance v1, Lorg/nexage/sourcekit/mraid/MRAIDBrowser$3;

    invoke-direct {v1, p0}, Lorg/nexage/sourcekit/mraid/MRAIDBrowser$3;-><init>(Lorg/nexage/sourcekit/mraid/MRAIDBrowser;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDBrowser;->forwardButton:Landroid/widget/ImageButton;

    new-instance v1, Lorg/nexage/sourcekit/mraid/MRAIDBrowser$4;

    invoke-direct {v1, p0}, Lorg/nexage/sourcekit/mraid/MRAIDBrowser$4;-><init>(Lorg/nexage/sourcekit/mraid/MRAIDBrowser;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDBrowser;->refreshButton:Landroid/widget/ImageButton;

    new-instance v1, Lorg/nexage/sourcekit/mraid/MRAIDBrowser$5;

    invoke-direct {v1, p0}, Lorg/nexage/sourcekit/mraid/MRAIDBrowser$5;-><init>(Lorg/nexage/sourcekit/mraid/MRAIDBrowser;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDBrowser;->closeButton:Landroid/widget/ImageButton;

    new-instance v1, Lorg/nexage/sourcekit/mraid/MRAIDBrowser$6;

    invoke-direct {v1, p0}, Lorg/nexage/sourcekit/mraid/MRAIDBrowser$6;-><init>(Lorg/nexage/sourcekit/mraid/MRAIDBrowser;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method createButton(IIILjava/lang/String;)Landroid/widget/ImageButton;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lorg/nexage/sourcekit/mraid/MRAIDBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p4}, Lorg/nexage/sourcekit/mraid/Assets;->getDrawableFromBase64(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x10

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v3, p3, v3, p3}, Landroid/widget/ImageButton;->setPadding(IIII)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lorg/nexage/sourcekit/mraid/MRAIDBrowser;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    invoke-virtual {p0}, Lorg/nexage/sourcekit/mraid/MRAIDBrowser;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    invoke-virtual {p0}, Lorg/nexage/sourcekit/mraid/MRAIDBrowser;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/nexage/sourcekit/mraid/MRAIDBrowser;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_manager"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDBrowser;->supportedNativeFeatures:Ljava/util/ArrayList;

    :cond_0
    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDBrowser;->createUi()V

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDBrowser;->setButtonListeners()V

    iget-object v0, p0, Lorg/nexage/sourcekit/mraid/MRAIDBrowser;->rootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lorg/nexage/sourcekit/mraid/MRAIDBrowser;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lorg/nexage/sourcekit/mraid/MRAIDBrowser;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/nexage/sourcekit/mraid/MRAIDBrowser;->initializeWebView(Landroid/content/Intent;)V

    invoke-direct {p0}, Lorg/nexage/sourcekit/mraid/MRAIDBrowser;->enableCookies()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    return-void
.end method
