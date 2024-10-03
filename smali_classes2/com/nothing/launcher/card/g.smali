.class public final Lcom/nothing/launcher/card/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/dragndrop/DragController$DragListener;


# instance fields
.field private final g:Lq2/m;

.field private final h:Landroid/view/View;

.field private final i:Lcom/nothing/launcher/card/v;

.field private final j:Landroid/os/Handler;

.field private final k:Lcom/nothing/launcher/card/p;

.field private l:Ly5/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly5/a<",
            "Ln5/t;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ly5/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly5/a<",
            "Ln5/t;",
            ">;"
        }
    .end annotation
.end field

.field private n:I


# direct methods
.method public constructor <init>(Lq2/m;Landroid/view/View;)V
    .locals 1

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nothing/launcher/card/g;->g:Lq2/m;

    iput-object p2, p0, Lcom/nothing/launcher/card/g;->h:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type com.nothing.launcher.card.PendingAddCardInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/nothing/launcher/card/v;

    iput-object p2, p0, Lcom/nothing/launcher/card/g;->i:Lcom/nothing/launcher/card/v;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/nothing/launcher/card/g;->j:Landroid/os/Handler;

    invoke-virtual {p1}, Lq2/m;->getCardWidgetHost()Lcom/nothing/launcher/card/p;

    move-result-object p1

    iput-object p1, p0, Lcom/nothing/launcher/card/g;->k:Lcom/nothing/launcher/card/p;

    const/4 p1, -0x1

    iput p1, p0, Lcom/nothing/launcher/card/g;->n:I

    return-void
.end method

.method public static synthetic a(Ly5/a;)V
    .locals 0

    invoke-static {p0}, Lcom/nothing/launcher/card/g;->n(Ly5/a;)V

    return-void
.end method

.method public static synthetic b(Ly5/a;)V
    .locals 0

    invoke-static {p0}, Lcom/nothing/launcher/card/g;->k(Ly5/a;)V

    return-void
.end method

.method public static synthetic c(Ly5/a;)V
    .locals 0

    invoke-static {p0}, Lcom/nothing/launcher/card/g;->l(Ly5/a;)V

    return-void
.end method

.method public static final synthetic d(Lcom/nothing/launcher/card/g;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/card/g;->j:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic e(Lcom/nothing/launcher/card/g;)Ly5/a;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/card/g;->m:Ly5/a;

    return-object p0
.end method

.method public static final synthetic f(Lcom/nothing/launcher/card/g;)Lcom/nothing/launcher/card/v;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/card/g;->i:Lcom/nothing/launcher/card/v;

    return-object p0
.end method

.method public static final synthetic g(Lcom/nothing/launcher/card/g;)Lq2/m;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/card/g;->g:Lq2/m;

    return-object p0
.end method

.method public static final synthetic h(Lcom/nothing/launcher/card/g;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/card/g;->h:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic i(Lcom/nothing/launcher/card/g;)I
    .locals 0

    iget p0, p0, Lcom/nothing/launcher/card/g;->n:I

    return p0
.end method

.method public static final synthetic j(Lcom/nothing/launcher/card/g;I)V
    .locals 0

    iput p1, p0, Lcom/nothing/launcher/card/g;->n:I

    return-void
.end method

.method private static final k(Ly5/a;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ly5/a;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private static final l(Ly5/a;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ly5/a;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private final m()V
    .locals 4

    iget-object v0, p0, Lcom/nothing/launcher/card/g;->k:Lcom/nothing/launcher/card/p;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/nothing/launcher/card/g;->i:Lcom/nothing/launcher/card/v;

    iget-object v2, p0, Lcom/nothing/launcher/card/g;->g:Lq2/m;

    invoke-virtual {v1, v2}, Lcom/nothing/launcher/card/v;->getDefaultSizeOptions(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/nothing/launcher/card/g;->i:Lcom/nothing/launcher/card/v;

    invoke-virtual {v2}, Lcom/nothing/launcher/card/v;->k()Lcom/nothing/launcher/card/CardWidgetAddFlowHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nothing/launcher/card/CardWidgetAddFlowHandler;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/nothing/launcher/card/g;->i:Lcom/nothing/launcher/card/v;

    invoke-virtual {p0, v1}, Lcom/nothing/launcher/card/v;->l(Landroid/os/Bundle;)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/nothing/launcher/card/g;->i:Lcom/nothing/launcher/card/v;

    invoke-virtual {v2}, Lcom/nothing/launcher/card/v;->j()Lcom/nothing/launcher/card/CardWidgetProviderInfo;

    move-result-object v2

    new-instance v3, Lcom/nothing/launcher/card/g$a;

    invoke-direct {v3, p0, v0, v2, v1}, Lcom/nothing/launcher/card/g$a;-><init>(Lcom/nothing/launcher/card/g;Lcom/nothing/launcher/card/p;Lcom/nothing/launcher/card/CardWidgetProviderInfo;Landroid/os/Bundle;)V

    iput-object v3, p0, Lcom/nothing/launcher/card/g;->l:Ly5/a;

    new-instance v1, Lcom/nothing/launcher/card/g$b;

    invoke-direct {v1, p0, v0}, Lcom/nothing/launcher/card/g$b;-><init>(Lcom/nothing/launcher/card/g;Lcom/nothing/launcher/card/p;)V

    iput-object v1, p0, Lcom/nothing/launcher/card/g;->m:Ly5/a;

    iget-object v0, p0, Lcom/nothing/launcher/card/g;->j:Landroid/os/Handler;

    iget-object p0, p0, Lcom/nothing/launcher/card/g;->l:Ly5/a;

    invoke-static {p0}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    new-instance v1, Lcom/nothing/launcher/card/c;

    invoke-direct {v1, p0}, Lcom/nothing/launcher/card/c;-><init>(Ly5/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final n(Ly5/a;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ly5/a;->invoke()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onDragEnd()V
    .locals 3

    iget-object v0, p0, Lcom/nothing/launcher/card/g;->g:Lq2/m;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;->removeDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    iget-object v0, p0, Lcom/nothing/launcher/card/g;->l:Ly5/a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nothing/launcher/card/g;->j:Landroid/os/Handler;

    new-instance v2, Lcom/nothing/launcher/card/d;

    invoke-direct {v2, v0}, Lcom/nothing/launcher/card/d;-><init>(Ly5/a;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/nothing/launcher/card/g;->m:Ly5/a;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/nothing/launcher/card/g;->j:Landroid/os/Handler;

    new-instance v2, Lcom/nothing/launcher/card/e;

    invoke-direct {v2, v0}, Lcom/nothing/launcher/card/e;-><init>(Ly5/a;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iget v0, p0, Lcom/nothing/launcher/card/g;->n:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget-object v2, p0, Lcom/nothing/launcher/card/g;->k:Lcom/nothing/launcher/card/p;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0}, Lcom/nothing/launcher/card/p;->r(I)V

    :cond_2
    iput v1, p0, Lcom/nothing/launcher/card/g;->n:I

    :cond_3
    iget-object v0, p0, Lcom/nothing/launcher/card/g;->i:Lcom/nothing/launcher/card/v;

    invoke-virtual {v0}, Lcom/nothing/launcher/card/v;->i()Lcom/nothing/cardhost/e;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/nothing/launcher/card/g;->g:Lq2/m;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/dragndrop/NTDragLayer;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/nothing/launcher/card/g;->k:Lcom/nothing/launcher/card/p;

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/nothing/cardhost/e;->getAppWidgetId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/nothing/launcher/card/p;->r(I)V

    :cond_4
    iget-object p0, p0, Lcom/nothing/launcher/card/g;->i:Lcom/nothing/launcher/card/v;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nothing/launcher/card/v;->m(Lcom/nothing/cardhost/e;)V

    return-void
.end method

.method public onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 0

    invoke-direct {p0}, Lcom/nothing/launcher/card/g;->m()V

    return-void
.end method
