.class public Lcom/nothing/cardhost/e;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/nothing/cardhost/g;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1f
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/cardhost/e$b;,
        Lcom/nothing/cardhost/e$c;,
        Lcom/nothing/cardhost/e$a;
    }
.end annotation


# static fields
.field public static final I:Lcom/nothing/cardhost/e$b;


# instance fields
.field private A:I

.field private B:Li6/v1;

.field private C:Li6/v1;

.field private D:Li6/v1;

.field private E:Z

.field private F:Lcom/nothing/cardhost/e$a;

.field private G:Lcom/nothing/cardhost/h;

.field private final H:Lcom/nothing/cardhost/e$d;

.field private g:Lw1/a;

.field private h:Z

.field private i:Landroid/content/Context;

.field private j:I

.field private k:Lcom/nothing/cardservice/CardWidgetMetaInfo;

.field private l:Landroid/util/SizeF;

.field private m:Landroid/view/View;

.field private n:I

.field private o:Z

.field private p:Landroid/view/View;

.field private q:Landroid/view/View;

.field private r:Z

.field private s:Lx1/e;

.field private t:Landroid/util/SparseIntArray;

.field private u:Lcom/nothing/cardhost/a;

.field private v:J

.field private w:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private x:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field private y:J

.field private z:Landroid/os/CancellationSignal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nothing/cardhost/e$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nothing/cardhost/e$b;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/nothing/cardhost/e;->I:Lcom/nothing/cardhost/e$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lw1/a;Z)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/nothing/cardhost/e;->g:Lw1/a;

    iput-boolean p3, p0, Lcom/nothing/cardhost/e;->h:Z

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/nothing/cardhost/e;->v:J

    new-instance p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p3, p0, Lcom/nothing/cardhost/e;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-wide p1, p0, Lcom/nothing/cardhost/e;->y:J

    const/4 p1, 0x1

    iput p1, p0, Lcom/nothing/cardhost/e;->A:I

    new-instance p1, Lcom/nothing/cardhost/e$d;

    invoke-direct {p1, p0}, Lcom/nothing/cardhost/e$d;-><init>(Lcom/nothing/cardhost/e;)V

    iput-object p1, p0, Lcom/nothing/cardhost/e;->H:Lcom/nothing/cardhost/e$d;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lw1/a;ZILkotlin/jvm/internal/i;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/nothing/cardhost/e;-><init>(Landroid/content/Context;Lw1/a;Z)V

    return-void
.end method

.method private final A(Landroid/content/res/Configuration;)V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget v0, p0, Lcom/nothing/cardhost/e;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/nothing/cardhost/e;->u:Lcom/nothing/cardhost/a;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/nothing/cardhost/a;->onHostConfigChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can not call onHostConfigChanged method for view status = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/nothing/cardhost/e;->n:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Host"

    invoke-static {p1, p0}, Lh2/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final F()V
    .locals 9
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget v0, p0, Lcom/nothing/cardhost/e;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/nothing/cardhost/e;->B:Li6/v1;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Li6/v1;->a()Z

    move-result v0

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    const/4 v0, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/nothing/cardhost/e;->B:Li6/v1;

    if-eqz v2, :cond_1

    invoke-static {v2, v0, v1, v0}, Li6/v1$a;->a(Li6/v1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_1
    invoke-static {}, Lo2/b;->b()Li6/m0;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lcom/nothing/cardhost/e$f;

    invoke-direct {v6, p0, v0}, Lcom/nothing/cardhost/e$f;-><init>(Lcom/nothing/cardhost/e;Lq5/d;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Li6/h;->b(Li6/m0;Lq5/g;Li6/o0;Ly5/p;ILjava/lang/Object;)Li6/v1;

    move-result-object v0

    iput-object v0, p0, Lcom/nothing/cardhost/e;->B:Li6/v1;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not call onHostViewResume method for view status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/nothing/cardhost/e;->n:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Host"

    invoke-static {v0, p0}, Lh2/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final G()V
    .locals 9
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget v0, p0, Lcom/nothing/cardhost/e;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/nothing/cardhost/e;->C:Li6/v1;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Li6/v1;->a()Z

    move-result v0

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    const/4 v0, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/nothing/cardhost/e;->C:Li6/v1;

    if-eqz v2, :cond_1

    invoke-static {v2, v0, v1, v0}, Li6/v1$a;->a(Li6/v1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_1
    invoke-static {}, Lo2/b;->b()Li6/m0;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lcom/nothing/cardhost/e$g;

    invoke-direct {v6, p0, v0}, Lcom/nothing/cardhost/e$g;-><init>(Lcom/nothing/cardhost/e;Lq5/d;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Li6/h;->b(Li6/m0;Lq5/g;Li6/o0;Ly5/p;ILjava/lang/Object;)Li6/v1;

    move-result-object v0

    iput-object v0, p0, Lcom/nothing/cardhost/e;->C:Li6/v1;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not call onHostViewStop method for view status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/nothing/cardhost/e;->n:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Host"

    invoke-static {v0, p0}, Lh2/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final H(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nothing/cardhost/e;->E:Z

    invoke-virtual {p0, p1}, Lcom/nothing/cardhost/e;->s(Z)V

    invoke-virtual {p0, p1}, Lcom/nothing/cardhost/e;->t(Z)V

    invoke-virtual {p0, p1}, Lcom/nothing/cardhost/e;->u(Z)V

    return-void
.end method

.method private final J()V
    .locals 3

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->saveHierarchyState(Landroid/util/SparseArray;)V

    iget-object v1, p0, Lcom/nothing/cardhost/e;->u:Lcom/nothing/cardhost/a;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/nothing/cardhost/e;->o(Lcom/nothing/cardhost/a;Z)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->restoreHierarchyState(Landroid/util/SparseArray;)V

    return-void
.end method

.method private final M()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/nothing/cardhost/e;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/nothing/cardhost/e;->u:Lcom/nothing/cardhost/a;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/nothing/cardhost/a;->getBroadcastConfig()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v2, Lj2/a;->i:Lj2/a;

    invoke-virtual {v2}, Lj2/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/nothing/cardhost/e;->V()V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v1, v2

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nothing/cardhost/e;->F:Lcom/nothing/cardhost/e$a;

    if-nez v1, :cond_1

    new-instance v1, Lcom/nothing/cardhost/e$a;

    invoke-direct {v1, p0}, Lcom/nothing/cardhost/e$a;-><init>(Lcom/nothing/cardhost/e;)V

    :cond_1
    iput-object v1, p0, Lcom/nothing/cardhost/e;->F:Lcom/nothing/cardhost/e$a;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context.applicationContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nothing/cardhost/e;->F:Lcom/nothing/cardhost/e$a;

    invoke-static {v2}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    invoke-static {v1, v2, v0}, Lcom/nothing/cardhost/f;->a(Landroid/content/Context;Lcom/nothing/cardhost/f$a;Ljava/util/List;)V

    sget-object v0, Lh2/a;->a:Lh2/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add receiver for host = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "CardWidgetHostView"

    invoke-virtual {v0, v1, p0}, Lh2/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final N()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/nothing/cardhost/e;->H:Lcom/nothing/cardhost/e$d;

    invoke-virtual {v0, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method private final P()V
    .locals 7

    iget-wide v0, p0, Lcom/nothing/cardhost/e;->y:J

    iget-object v2, p0, Lcom/nothing/cardhost/e;->x:Landroid/util/SparseArray;

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-nez v5, :cond_2

    iget-wide v5, p0, Lcom/nothing/cardhost/e;->v:J

    cmp-long v0, v0, v5

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iput-wide v3, p0, Lcom/nothing/cardhost/e;->y:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nothing/cardhost/e;->x:Landroid/util/SparseArray;

    :try_start_0
    invoke-super {p0, v2}, Landroid/widget/FrameLayout;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/nothing/cardhost/e;->k:Lcom/nothing/cardservice/CardWidgetMetaInfo;

    if-nez v1, :cond_1

    const-string v1, "null"

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/nothing/cardhost/e;->k:Lcom/nothing/cardservice/CardWidgetMetaInfo;

    invoke-static {v1}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->v()Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to restoreInstanceState for widget id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/nothing/cardhost/e;->j:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Host"

    invoke-static {v1, p0, v0}, Lh2/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private final T()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/nothing/cardhost/e;->H:Lcom/nothing/cardhost/e$d;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method private final V()V
    .locals 3

    iget-object v0, p0, Lcom/nothing/cardhost/e;->F:Lcom/nothing/cardhost/e$a;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "context.applicationContext"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/nothing/cardhost/f;->d(Landroid/content/Context;Lcom/nothing/cardhost/f$a;)V

    sget-object p0, Lh2/a;->a:Lh2/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove receiver for host = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CardWidgetHostView"

    invoke-virtual {p0, v1, v0}, Lh2/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static final synthetic d(Lcom/nothing/cardhost/e;Landroid/view/View;ZLjava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/nothing/cardhost/e;->p(Landroid/view/View;ZLjava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic e(Lcom/nothing/cardhost/e;)Lx1/e;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardhost/e;->s:Lx1/e;

    return-object p0
.end method

.method public static final synthetic f(Lcom/nothing/cardhost/e;)I
    .locals 0

    iget p0, p0, Lcom/nothing/cardhost/e;->A:I

    return p0
.end method

.method public static final synthetic g(Lcom/nothing/cardhost/e;)Lcom/nothing/cardhost/a;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardhost/e;->u:Lcom/nothing/cardhost/a;

    return-object p0
.end method

.method private final getDefaultPadding()Landroid/graphics/Rect;
    .locals 2

    sget-object v0, Lcom/nothing/cardhost/e;->I:Lcom/nothing/cardhost/e$b;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/nothing/cardhost/e$b;->a(Lcom/nothing/cardhost/e$b;Landroid/content/Context;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private final getRemoteTargetContext()Landroid/content/Context;
    .locals 8

    iget-object v0, p0, Lcom/nothing/cardhost/e;->k:Lcom/nothing/cardservice/CardWidgetMetaInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->v()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "{\n            context\n        }"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1
    :try_start_0
    sget-object v1, Ln5/l;->h:Ln5/l$a;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    const-string v1, "context.packageManager.g\u2026ATA\n                    )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lf2/c;->b(Ljava/lang/Object;)Lf2/c$g;

    move-result-object v1

    const-string v2, "createApplicationContext"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/pm/ApplicationInfo;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-interface {v1, v2, v4}, Lf2/c$g;->a(Ljava/lang/String;[Ljava/lang/Class;)Lf2/c$j;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v6

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-interface {v1, v2, v3}, Lf2/c$j;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.content.Context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/Context;

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    sget-object v1, Ln5/l;->h:Ln5/l$a;

    invoke-static {v0}, Ln5/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {v0}, Ln5/l;->f(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v0, p0

    :cond_3
    const-string p0, "{\n            kotlin.run\u2026efault(context)\n        }"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p0, v0

    check-cast p0, Landroid/content/Context;

    :goto_3
    return-object p0
.end method

.method public static final synthetic h(Lcom/nothing/cardhost/e;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardhost/e;->p:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic i(Lcom/nothing/cardhost/e;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardhost/e;->q:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic j(Lcom/nothing/cardhost/e;Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nothing/cardhost/e;->A(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public static final synthetic k(Lcom/nothing/cardhost/e;I)V
    .locals 0

    iput p1, p0, Lcom/nothing/cardhost/e;->n:I

    return-void
.end method

.method public static final synthetic l(Lcom/nothing/cardhost/e;Landroid/os/CancellationSignal;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardhost/e;->z:Landroid/os/CancellationSignal;

    return-void
.end method

.method public static final synthetic m(Lcom/nothing/cardhost/e;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardhost/e;->p:Landroid/view/View;

    return-void
.end method

.method public static final synthetic n(Lcom/nothing/cardhost/e;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardhost/e;->q:Landroid/view/View;

    return-void
.end method

.method private final o(Lcom/nothing/cardhost/a;Z)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/nothing/cardhost/a;->a()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    iput-wide v0, p0, Lcom/nothing/cardhost/e;->v:J

    iget-object v0, p0, Lcom/nothing/cardhost/e;->z:Landroid/os/CancellationSignal;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    iput-object v1, p0, Lcom/nothing/cardhost/e;->z:Landroid/os/CancellationSignal;

    :cond_1
    if-nez p1, :cond_3

    iget p1, p0, Lcom/nothing/cardhost/e;->n:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    return-void

    :cond_2
    sget-object p1, Lh2/a;->a:Lh2/a;

    const-string v0, "Host"

    const-string v2, "cardView == null, using initLayout to inflate"

    invoke-virtual {p1, v0, v2}, Lh2/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nothing/cardhost/e;->getDefaultView()Landroid/view/View;

    move-result-object p1

    iput p2, p0, Lcom/nothing/cardhost/e;->n:I

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    invoke-direct {p0, p1}, Lcom/nothing/cardhost/e;->x(Lcom/nothing/cardhost/a;)V

    return-void

    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nothing/cardhost/e;->s:Lx1/e;

    iget-object v2, p0, Lcom/nothing/cardhost/e;->g:Lw1/a;

    invoke-virtual {p1, p2, p0, v0, v2}, Lcom/nothing/cardhost/a;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Lx1/e;Lw1/a;)Ln5/k;

    move-result-object p1

    invoke-virtual {p1}, Ln5/k;->c()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    iput-object p2, p0, Lcom/nothing/cardhost/e;->p:Landroid/view/View;

    invoke-virtual {p1}, Ln5/k;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/nothing/cardhost/e;->q:Landroid/view/View;

    iget p2, p0, Lcom/nothing/cardhost/e;->A:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_5

    iget-object p1, p0, Lcom/nothing/cardhost/e;->p:Landroid/view/View;

    :cond_5
    iput v0, p0, Lcom/nothing/cardhost/e;->n:I

    :goto_1
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/nothing/cardhost/e;->p(Landroid/view/View;ZLjava/lang/Throwable;)V

    return-void
.end method

.method private final p(Landroid/view/View;ZLjava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nothing/cardhost/e;->r:Z

    if-nez p1, :cond_2

    iget p1, p0, Lcom/nothing/cardhost/e;->n:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    const-string p1, "Host"

    const-string v1, "Error inflating NTRemoteViews"

    invoke-static {p1, v1, p3}, Lh2/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    invoke-virtual {p0}, Lcom/nothing/cardhost/e;->getErrorView()Landroid/view/View;

    move-result-object p1

    iput v0, p0, Lcom/nothing/cardhost/e;->n:I

    :cond_2
    if-nez p2, :cond_3

    invoke-virtual {p0, p1}, Lcom/nothing/cardhost/e;->I(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_3
    iget-object p2, p0, Lcom/nothing/cardhost/e;->m:Landroid/view/View;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/nothing/cardhost/e;->m:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-object p1, p0, Lcom/nothing/cardhost/e;->m:Landroid/view/View;

    :cond_4
    invoke-virtual {p0}, Lcom/nothing/cardhost/e;->S()V

    invoke-direct {p0}, Lcom/nothing/cardhost/e;->M()V

    return-void
.end method

.method private final q()V
    .locals 4

    iget-object v0, p0, Lcom/nothing/cardhost/e;->B:Li6/v1;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Li6/v1;->a()Z

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nothing/cardhost/e;->B:Li6/v1;

    if-eqz v0, :cond_1

    invoke-static {v0, v3, v2, v3}, Li6/v1$a;->a(Li6/v1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_1
    iput-object v3, p0, Lcom/nothing/cardhost/e;->B:Li6/v1;

    :cond_2
    iget-object v0, p0, Lcom/nothing/cardhost/e;->C:Li6/v1;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Li6/v1;->a()Z

    move-result v0

    if-ne v0, v2, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/nothing/cardhost/e;->C:Li6/v1;

    if-eqz v0, :cond_4

    invoke-static {v0, v3, v2, v3}, Li6/v1$a;->a(Li6/v1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_4
    iput-object v3, p0, Lcom/nothing/cardhost/e;->C:Li6/v1;

    :cond_5
    iget-object v0, p0, Lcom/nothing/cardhost/e;->D:Li6/v1;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Li6/v1;->a()Z

    move-result v0

    if-ne v0, v2, :cond_6

    move v1, v2

    :cond_6
    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/nothing/cardhost/e;->D:Li6/v1;

    if-eqz v0, :cond_7

    invoke-static {v0, v3, v2, v3}, Li6/v1$a;->a(Li6/v1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_7
    iput-object v3, p0, Lcom/nothing/cardhost/e;->D:Li6/v1;

    :cond_8
    return-void
.end method

.method private final r(IIII)Landroid/util/SizeF;
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    new-instance v1, Landroid/util/SizeF;

    sub-int/2addr p3, p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p1

    sub-int/2addr p3, p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result p1

    sub-int/2addr p3, p1

    int-to-float p1, p3

    div-float/2addr p1, v0

    sub-int/2addr p4, p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p2

    sub-int/2addr p4, p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result p0

    sub-int/2addr p4, p0

    int-to-float p0, p4

    div-float/2addr p0, v0

    invoke-direct {v1, p1, p0}, Landroid/util/SizeF;-><init>(FF)V

    return-object v1
.end method

.method private final w()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/nothing/cardhost/e;->j:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getId()I

    move-result p0

    :goto_0
    return p0
.end method

.method private final x(Lcom/nothing/cardhost/a;)V
    .locals 7

    iget-object v0, p0, Lcom/nothing/cardhost/e;->z:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/nothing/cardhost/e;->z:Landroid/os/CancellationSignal;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v0, "context"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/nothing/cardhost/e$c;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/nothing/cardhost/e$c;-><init>(Lcom/nothing/cardhost/e;Lcom/nothing/cardhost/a;Z)V

    iget-object v5, p0, Lcom/nothing/cardhost/e;->s:Lx1/e;

    iget-object v6, p0, Lcom/nothing/cardhost/e;->g:Lw1/a;

    move-object v1, p1

    move-object v3, p0

    invoke-virtual/range {v1 .. v6}, Lcom/nothing/cardhost/a;->applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Lx1/q;Lx1/e;Lw1/a;)Landroid/os/CancellationSignal;

    move-result-object p1

    iput-object p1, p0, Lcom/nothing/cardhost/e;->z:Landroid/os/CancellationSignal;

    :cond_1
    return-void
.end method

.method private final z(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result p0

    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eq p0, v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result p0

    move v0, v1

    :goto_0
    if-ge v0, p0, :cond_3

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public B(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public C(Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public D()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nothing/cardhost/e;->H(Z)V

    return-void
.end method

.method public E()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nothing/cardhost/e;->H(Z)V

    return-void
.end method

.method protected I(Landroid/view/View;)V
    .locals 1

    const-string p0, "view"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    if-nez p0, :cond_0

    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :cond_0
    const/16 v0, 0x11

    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public K(Ljava/lang/String;)V
    .locals 2

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/nothing/cardhost/e;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/nothing/cardhost/e;->u:Lcom/nothing/cardhost/a;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/nothing/cardhost/a;->onBroadcastReceive(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can not call onBroadcastReceive method for view status = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/nothing/cardhost/e;->n:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Host"

    invoke-static {p1, p0}, Lh2/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final L()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget v0, p0, Lcom/nothing/cardhost/e;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/nothing/cardhost/e;->u:Lcom/nothing/cardhost/a;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/nothing/cardhost/a;->registerAnimListener()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not registerAnimListeners for view status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/nothing/cardhost/e;->n:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Host"

    invoke-static {v0, p0}, Lh2/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final O(Lcom/nothing/cardservice/CardWidgetMetaInfo;)V
    .locals 1

    iget v0, p0, Lcom/nothing/cardhost/e;->j:I

    invoke-virtual {p0, v0, p1}, Lcom/nothing/cardhost/e;->Q(ILcom/nothing/cardservice/CardWidgetMetaInfo;)V

    return-void
.end method

.method public Q(ILcom/nothing/cardservice/CardWidgetMetaInfo;)V
    .locals 3

    iput p1, p0, Lcom/nothing/cardhost/e;->j:I

    iput-object p2, p0, Lcom/nothing/cardhost/e;->k:Lcom/nothing/cardservice/CardWidgetMetaInfo;

    invoke-direct {p0}, Lcom/nothing/cardhost/e;->getDefaultPadding()Landroid/graphics/Rect;

    move-result-object p1

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final R()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget v0, p0, Lcom/nothing/cardhost/e;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/nothing/cardhost/e;->u:Lcom/nothing/cardhost/a;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/nothing/cardhost/a;->onStartAnim()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not control anim for view status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/nothing/cardhost/e;->n:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Host"

    invoke-static {v0, p0}, Lh2/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public S()V
    .locals 3

    iget v0, p0, Lcom/nothing/cardhost/e;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/nothing/cardhost/e;->G:Lcom/nothing/cardhost/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nothing/cardhost/h;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context.applicationContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nothing/cardhost/e;->getPeriodTime()I

    move-result v2

    invoke-direct {v0, v1, v2, p0}, Lcom/nothing/cardhost/h;-><init>(Landroid/content/Context;ILcom/nothing/cardhost/g;)V

    invoke-virtual {v0}, Lcom/nothing/cardhost/h;->k()V

    iput-object v0, p0, Lcom/nothing/cardhost/e;->G:Lcom/nothing/cardhost/h;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/nothing/cardhost/e;->getPeriodTime()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nothing/cardhost/h;->q(I)V

    :goto_0
    iget-boolean v0, p0, Lcom/nothing/cardhost/e;->E:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/nothing/cardhost/e;->G:Lcom/nothing/cardhost/h;

    invoke-static {p0}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/nothing/cardhost/h;->l()V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/nothing/cardhost/e;->G:Lcom/nothing/cardhost/h;

    if-eqz p0, :cond_2

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/nothing/cardhost/h;->q(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final U()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget v0, p0, Lcom/nothing/cardhost/e;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/nothing/cardhost/e;->u:Lcom/nothing/cardhost/a;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/nothing/cardhost/a;->unregisterAnimListener()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not unregisterAnimListeners for view status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/nothing/cardhost/e;->n:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Host"

    invoke-static {v0, p0}, Lh2/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final W(Lcom/nothing/cardservice/CardWidgetViewInfo;)V
    .locals 10

    iget-object v0, p0, Lcom/nothing/cardhost/e;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/nothing/cardservice/CardWidgetViewInfo;->b()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_1

    new-instance v0, Lcom/nothing/cardhost/a;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v2, "context"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v5, p0, Lcom/nothing/cardhost/e;->j:I

    iget-object v7, p0, Lcom/nothing/cardhost/e;->k:Lcom/nothing/cardservice/CardWidgetMetaInfo;

    iget-boolean v8, p0, Lcom/nothing/cardhost/e;->h:Z

    iget v9, p0, Lcom/nothing/cardhost/e;->A:I

    move-object v3, v0

    move-object v6, p1

    invoke-direct/range {v3 .. v9}, Lcom/nothing/cardhost/a;-><init>(Landroid/content/Context;ILcom/nothing/cardservice/CardWidgetViewInfo;Lcom/nothing/cardservice/CardWidgetMetaInfo;ZI)V

    :cond_1
    iput-object v0, p0, Lcom/nothing/cardhost/e;->u:Lcom/nothing/cardhost/a;

    const-string p1, "CardWidgetHostView"

    const-string v0, "CardWidgetHostView updateAppWidget invoked."

    invoke-static {p1, v0}, Lh2/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/nothing/cardhost/e;->u:Lcom/nothing/cardhost/a;

    invoke-direct {p0, p1, v1}, Lcom/nothing/cardhost/e;->o(Lcom/nothing/cardhost/a;Z)V

    return-void
.end method

.method public final X(Lcom/nothing/cardservice/CardWidgetViewInfo;)V
    .locals 8

    sget-object v0, Lh2/a;->a:Lh2/a;

    const-string v1, "CardWidgetHostView"

    const-string v2, "CardWidgetHostView viewDataChanged invoked."

    invoke-virtual {v0, v1, v2}, Lh2/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nothing/cardhost/e;->u:Lcom/nothing/cardhost/a;

    if-eqz v0, :cond_1

    invoke-static {}, Lo2/b;->c()Li6/m0;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lcom/nothing/cardhost/e$h;

    const/4 v7, 0x0

    invoke-direct {v4, v0, p1, p0, v7}, Lcom/nothing/cardhost/e$h;-><init>(Lcom/nothing/cardhost/a;Lcom/nothing/cardservice/CardWidgetViewInfo;Lcom/nothing/cardhost/e;Lq5/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Li6/h;->b(Li6/m0;Lq5/g;Li6/o0;Ly5/p;ILjava/lang/Object;)Li6/v1;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/nothing/cardservice/CardWidgetViewInfo;->b()Ljava/lang/String;

    move-result-object v7

    :cond_0
    invoke-virtual {v0, v7}, Lcom/nothing/cardhost/a;->updateViewInfoJson(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 9

    iget v0, p0, Lcom/nothing/cardhost/e;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/nothing/cardhost/e;->D:Li6/v1;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Li6/v1;->a()Z

    move-result v0

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    const/4 v0, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/nothing/cardhost/e;->D:Li6/v1;

    if-eqz v2, :cond_1

    invoke-static {v2, v0, v1, v0}, Li6/v1$a;->a(Li6/v1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_1
    invoke-static {}, Lo2/b;->b()Li6/m0;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lcom/nothing/cardhost/e$e;

    invoke-direct {v6, p0, v0}, Lcom/nothing/cardhost/e$e;-><init>(Lcom/nothing/cardhost/e;Lq5/d;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Li6/h;->b(Li6/m0;Lq5/g;Li6/o0;Ly5/p;ILjava/lang/Object;)Li6/v1;

    move-result-object v0

    iput-object v0, p0, Lcom/nothing/cardhost/e;->D:Li6/v1;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not call onHostRefresh method for view status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/nothing/cardhost/e;->n:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Host"

    invoke-static {v0, p0}, Lh2/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/nothing/cardhost/e;->w()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;

    instance-of v0, p1, Landroid/os/Bundle;

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    sget-object v0, Ln5/l;->h:Ln5/l$a;

    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    const-string v4, "jail"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v3

    sget-object v0, Ln5/t;->a:Ln5/t;

    invoke-static {v0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v4, Ln5/l;->h:Ln5/l$a;

    invoke-static {v0}, Ln5/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ln5/l;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "CardWidgetHostView"

    const-string v4, "HostView dispatchRestoreInstanceState error."

    invoke-static {v0, v4}, Lh2/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "inflation_id"

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    :cond_1
    if-nez v3, :cond_2

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    :cond_2
    iput-object v3, p0, Lcom/nothing/cardhost/e;->x:Landroid/util/SparseArray;

    iput-wide v1, p0, Lcom/nothing/cardhost/e;->y:J

    invoke-direct {p0}, Lcom/nothing/cardhost/e;->P()V

    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "jail"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    iget-wide v2, p0, Lcom/nothing/cardhost/e;->v:J

    const-string v0, "inflation_id"

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-direct {p0}, Lcom/nothing/cardhost/e;->w()I

    move-result v0

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/nothing/cardhost/e;->w()I

    move-result p0

    invoke-virtual {p1, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/nothing/cardhost/e;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    const-string v0, "attrs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nothing/cardhost/e;->i:Landroid/content/Context;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v0}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    invoke-direct {p0, v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object p0
.end method

.method public final getAppWidgetId()I
    .locals 0

    iget p0, p0, Lcom/nothing/cardhost/e;->j:I

    return p0
.end method

.method public final getAppWidgetInfo()Lcom/nothing/cardservice/CardWidgetMetaInfo;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardhost/e;->k:Lcom/nothing/cardservice/CardWidgetMetaInfo;

    return-object p0
.end method

.method public final getBroadcastListener()Lcom/nothing/cardhost/e$a;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardhost/e;->F:Lcom/nothing/cardhost/e$a;

    return-object p0
.end method

.method protected getDefaultView()Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/nothing/cardhost/e;->k:Lcom/nothing/cardservice/CardWidgetMetaInfo;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/nothing/cardhost/e;->getRemoteTargetContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type android.view.LayoutInflater"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/LayoutInflater;

    invoke-virtual {v2, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const-string v2, "layoutInflater.cloneInContext(remoteContext)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->p()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/nothing/cardhost/e;->getErrorView()Landroid/view/View;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method protected getErrorView()Landroid/view/View;
    .locals 2

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget-object p0, Lo2/a;->a:Lo2/a$a;

    const-string v1, "gadget_host_error_inflating"

    invoke-virtual {p0, v1}, Lo2/a$a;->c(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    const/16 p0, 0x7f

    const/4 v1, 0x0

    invoke-static {p0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    return-object v0
.end method

.method public final getExtraInfo()Landroid/os/Bundle;
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget v0, p0, Lcom/nothing/cardhost/e;->n:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object p0, p0, Lcom/nothing/cardhost/e;->u:Lcom/nothing/cardhost/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/nothing/cardhost/a;->getExtraInfo()Landroid/os/Bundle;

    move-result-object v1

    :cond_0
    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not get card extra info for view status = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/nothing/cardhost/e;->n:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Host"

    invoke-static {v0, p0}, Lh2/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public final getHandler()Lw1/a;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardhost/e;->g:Lw1/a;

    return-object p0
.end method

.method public final getLastVisibility()Z
    .locals 0

    iget-boolean p0, p0, Lcom/nothing/cardhost/e;->E:Z

    return p0
.end method

.method public getPeriodTime()I
    .locals 3

    iget v0, p0, Lcom/nothing/cardhost/e;->n:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object p0, p0, Lcom/nothing/cardhost/e;->u:Lcom/nothing/cardhost/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/nothing/cardhost/a;->getPeriodTime()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_0
    return v1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nothing/cardhost/e;->E:Z

    iget-object v0, p0, Lcom/nothing/cardhost/e;->G:Lcom/nothing/cardhost/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nothing/cardhost/h;->k()V

    :cond_0
    iget-object v0, p0, Lcom/nothing/cardhost/e;->G:Lcom/nothing/cardhost/h;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/nothing/cardhost/h;->l()V

    :cond_1
    invoke-direct {p0}, Lcom/nothing/cardhost/e;->N()V

    invoke-direct {p0}, Lcom/nothing/cardhost/e;->M()V

    invoke-virtual {p0}, Lcom/nothing/cardhost/e;->L()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/nothing/cardhost/e;->G:Lcom/nothing/cardhost/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nothing/cardhost/h;->p()V

    :cond_0
    invoke-direct {p0}, Lcom/nothing/cardhost/e;->T()V

    invoke-direct {p0}, Lcom/nothing/cardhost/e;->V()V

    invoke-virtual {p0}, Lcom/nothing/cardhost/e;->U()V

    invoke-direct {p0}, Lcom/nothing/cardhost/e;->q()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Lcom/nothing/cardhost/e;->o:Z

    if-nez v1, :cond_0

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/nothing/cardhost/e;->r(IIII)Landroid/util/SizeF;

    move-result-object v1

    iput-object v1, p0, Lcom/nothing/cardhost/e;->l:Landroid/util/SizeF;

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lcom/nothing/cardhost/e;->o:Z

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "CurrentView onMeasure error!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    const-string p2, "Host"

    const-string p3, "Remote provider threw runtime exception, using error view instead"

    invoke-static {p2, p3, p1}, Lh2/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/nothing/cardhost/e;->m:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeViewInLayout(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/nothing/cardhost/e;->getErrorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/nothing/cardhost/e;->I(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/FrameLayout;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    const/high16 p3, 0x40000000    # 2.0f

    invoke-static {p2, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p4

    invoke-static {p4, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p3

    add-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result p3

    add-int/2addr p2, p3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p4

    add-int/2addr p3, p4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result p4

    add-int/2addr p3, p4

    invoke-virtual {p1, v0, v0, p2, p3}, Landroid/view/View;->layout(IIII)V

    iput-object p1, p0, Lcom/nothing/cardhost/e;->m:Landroid/view/View;

    const/4 p1, 0x2

    iput p1, p0, Lcom/nothing/cardhost/e;->n:I

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    :try_start_0
    sget-object v0, Ln5/l;->h:Ln5/l$a;

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    sget-object v0, Ln5/t;->a:Ln5/t;

    invoke-static {v0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Ln5/l;->h:Ln5/l$a;

    invoke-static {v0}, Ln5/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ln5/l;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lh2/a;->a:Lh2/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CardWidgetHostView onMeasure child error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lh2/a;->b(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/nothing/cardhost/e;->o:Z

    :cond_0
    return-void
.end method

.method public s(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/nothing/cardhost/e;->R()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/nothing/cardhost/e;->v()V

    :goto_0
    return-void
.end method

.method public final setBroadcastListener(Lcom/nothing/cardhost/e$a;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardhost/e;->F:Lcom/nothing/cardhost/e$a;

    return-void
.end method

.method public final setColorResources(Landroid/util/SparseIntArray;)V
    .locals 2

    const-string v0, "colorMapping"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nothing/cardhost/e;->t:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    invoke-direct {p0, v0, p1}, Lcom/nothing/cardhost/e;->z(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object p1

    iput-object p1, p0, Lcom/nothing/cardhost/e;->t:Landroid/util/SparseIntArray;

    sget-object p1, Lx1/e;->b:Lx1/e$a;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nothing/cardhost/e;->t:Landroid/util/SparseIntArray;

    invoke-static {v1}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Lx1/e$a;->a(Landroid/content/Context;Landroid/util/SparseIntArray;)Lx1/e;

    move-result-object p1

    iput-object p1, p0, Lcom/nothing/cardhost/e;->s:Lx1/e;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/nothing/cardhost/e;->r:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/nothing/cardhost/e;->n:I

    invoke-direct {p0}, Lcom/nothing/cardhost/e;->J()V

    return-void
.end method

.method public final setHandler(Lw1/a;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardhost/e;->g:Lw1/a;

    return-void
.end method

.method public final setLastVisibility(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nothing/cardhost/e;->E:Z

    return-void
.end method

.method public t(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/nothing/cardhost/e;->F()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/nothing/cardhost/e;->G()V

    :goto_0
    return-void
.end method

.method public u(Z)V
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardhost/e;->G:Lcom/nothing/cardhost/h;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/nothing/cardhost/h;->m(Z)V

    :cond_0
    return-void
.end method

.method public final v()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget v0, p0, Lcom/nothing/cardhost/e;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/nothing/cardhost/e;->u:Lcom/nothing/cardhost/a;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/nothing/cardhost/a;->onEndAnim()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not control anim for view status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/nothing/cardhost/e;->n:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Host"

    invoke-static {v0, p0}, Lh2/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final y()Z
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardhost/e;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method
