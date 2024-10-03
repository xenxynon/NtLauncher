.class final Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView$onFinishInflate$1$1;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/l<",
        "Ljava/lang/Boolean;",
        "Ln5/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $this_run:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;


# direct methods
.method constructor <init>(Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView$onFinishInflate$1$1;->$this_run:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView$onFinishInflate$1$1;->invoke(Z)V

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method public final invoke(Z)V
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView$onFinishInflate$1$1;->$this_run:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;

    invoke-static {p0}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;->access$getController$p(Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerPagerView;)Lcom/nothing/cardwidget/mediaplayer/IMediaController;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/IMediaController;->onPlayStateSwitch(Z)V

    :cond_0
    return-void
.end method
