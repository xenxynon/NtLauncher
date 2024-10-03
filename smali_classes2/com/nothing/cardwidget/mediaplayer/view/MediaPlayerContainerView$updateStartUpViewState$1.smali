.class final Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$updateStartUpViewState$1;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->updateStartUpViewState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/a<",
        "Ln5/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $state:I

.field final synthetic this$0:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;


# direct methods
.method constructor <init>(Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;I)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$updateStartUpViewState$1;->this$0:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;

    iput p2, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$updateStartUpViewState$1;->$state:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$updateStartUpViewState$1;->invoke()V

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method public final invoke()V
    .locals 2

    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$updateStartUpViewState$1;->this$0:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;

    invoke-static {v0}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->access$recordEnabledWidget(Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;)V

    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$updateStartUpViewState$1;->this$0:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;

    invoke-static {v0}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->access$applyCachedData(Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;)V

    iget-object v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$updateStartUpViewState$1;->this$0:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;

    iget p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$updateStartUpViewState$1;->$state:I

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->access$showMediaPlayerViewPager(Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;IZ)V

    return-void
.end method
