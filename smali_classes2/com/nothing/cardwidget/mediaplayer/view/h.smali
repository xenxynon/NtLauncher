.class public final synthetic Lcom/nothing/cardwidget/mediaplayer/view/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/value/SimpleLottieValueCallback;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/h;->a:I

    return-void
.end method


# virtual methods
.method public final getValue(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/h;->a:I

    invoke-static {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/ViewPagerAdapter$FirstPageViewHolder;->g(ILcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
