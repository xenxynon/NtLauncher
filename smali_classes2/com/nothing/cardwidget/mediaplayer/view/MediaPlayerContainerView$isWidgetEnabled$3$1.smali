.class final Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$isWidgetEnabled$3$1;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->isWidgetEnabled(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/l<",
        "Landroid/os/Bundle;",
        "Ln5/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $widgetId:I

.field final synthetic this$0:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;


# direct methods
.method constructor <init>(ILcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;)V
    .locals 0

    iput p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$isWidgetEnabled$3$1;->$widgetId:I

    iput-object p2, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$isWidgetEnabled$3$1;->this$0:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$isWidgetEnabled$3$1;->invoke(Landroid/os/Bundle;)V

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method public final invoke(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "is_widget_id_enabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallRemote isWidgetEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayerContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;->INSTANCE:Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;

    iget v1, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$isWidgetEnabled$3$1;->$widgetId:I

    invoke-virtual {v0, v1, p1}, Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;->setWidgetEnabled(IZ)V

    invoke-virtual {v0}, Lcom/nothing/cardwidget/mediaplayer/utils/MusicDataHelper;->getPlaybackState()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$isWidgetEnabled$3$1;->this$0:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->access$updateStartUpViewState(Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;I)V

    :cond_1
    return-void
.end method
