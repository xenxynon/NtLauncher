.class final Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$recordEnabledWidget$1$1;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Ly5/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;->recordEnabledWidget()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Ly5/p<",
        "Li6/m0;",
        "Lq5/d<",
        "-",
        "Ln5/t;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "com.nothing.cardwidget.mediaplayer.view.MediaPlayerContainerView$recordEnabledWidget$1$1"
    f = "MediaPlayerContainerView.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $it:I

.field label:I

.field final synthetic this$0:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;


# direct methods
.method constructor <init>(ILcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;Lq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;",
            "Lq5/d<",
            "-",
            "Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$recordEnabledWidget$1$1;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$recordEnabledWidget$1$1;->$it:I

    iput-object p2, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$recordEnabledWidget$1$1;->this$0:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILq5/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lq5/d;)Lq5/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lq5/d<",
            "*>;)",
            "Lq5/d<",
            "Ln5/t;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$recordEnabledWidget$1$1;

    iget v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$recordEnabledWidget$1$1;->$it:I

    iget-object p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$recordEnabledWidget$1$1;->this$0:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;

    invoke-direct {p1, v0, p0, p2}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$recordEnabledWidget$1$1;-><init>(ILcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;Lq5/d;)V

    return-object p1
.end method

.method public final invoke(Li6/m0;Lq5/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li6/m0;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$recordEnabledWidget$1$1;->create(Ljava/lang/Object;Lq5/d;)Lq5/d;

    move-result-object p0

    check-cast p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$recordEnabledWidget$1$1;

    sget-object p1, Ln5/t;->a:Ln5/t;

    invoke-virtual {p0, p1}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$recordEnabledWidget$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Li6/m0;

    check-cast p2, Lq5/d;

    invoke-virtual {p0, p1, p2}, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$recordEnabledWidget$1$1;->invoke(Li6/m0;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    iget v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$recordEnabledWidget$1$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget v0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$recordEnabledWidget$1$1;->$it:I

    const-string v1, "set_enabled_widget_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView$recordEnabledWidget$1$1;->this$0:Lcom/nothing/cardwidget/mediaplayer/view/MediaPlayerContainerView;

    invoke-virtual {p0, p1}, Lcom/nothing/cardwidget/RemoteServiceView;->callRemoteService(Landroid/os/Bundle;)Landroid/os/Bundle;

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
