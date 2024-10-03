.class public final Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$packageRemovedReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;


# direct methods
.method constructor <init>(Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$packageRemovedReceiver$1;->this$0:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x1f50b9c2

    if-eq v1, v2, :cond_2

    const v2, 0x5c1076e2

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_2
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    :cond_4
    if-eqz p1, :cond_5

    sget-object p2, Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;->INSTANCE:Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;

    invoke-virtual {p2}, Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;->getPlaybackState()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$packageRemovedReceiver$1;->this$0:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->access$updateStartUpViewState(Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;I)V

    :cond_5
    :goto_1
    return-void
.end method
