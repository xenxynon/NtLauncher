.class Lc/r$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field public g:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final h:Ljava/lang/String;

.field private final i:Lc/r$d;

.field private j:I

.field private k:Z

.field private final l:[J

.field private final m:[Lc/r$c;

.field private n:Z

.field private final o:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lc/r$d;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic p:Lc/r;


# direct methods
.method constructor <init>(Lc/r;Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lc/r$e;->p:Lc/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lc/r$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/r$d;-><init>(Lc/r$a;)V

    iput-object v0, p0, Lc/r$e;->i:Lc/r$d;

    const/4 v0, -0x1

    iput v0, p0, Lc/r$e;->j:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/r$e;->k:Z

    invoke-static {p1}, Lc/r;->h(Lc/r;)I

    move-result v1

    new-array v1, v1, [J

    iput-object v1, p0, Lc/r$e;->l:[J

    invoke-static {p1}, Lc/r;->h(Lc/r;)I

    move-result p1

    new-array p1, p1, [Lc/r$c;

    iput-object p1, p0, Lc/r$e;->m:[Lc/r$c;

    iput-boolean v0, p0, Lc/r$e;->n:Z

    new-instance p1, Lc/t;

    invoke-direct {p1, p0}, Lc/t;-><init>(Lc/r$e;)V

    iput-object p1, p0, Lc/r$e;->o:Ljava/util/function/Consumer;

    iput-object p2, p0, Lc/r$e;->g:Landroid/view/View;

    iput-object p3, p0, Lc/r$e;->h:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lc/r$e;Lc/r$d;Lc/r$d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lc/r$e;->l(Lc/r$d;Lc/r$d;)V

    return-void
.end method

.method public static synthetic b(Lc/r$e;Lc/r$d;)V
    .locals 0

    invoke-direct {p0, p1}, Lc/r$e;->g(Lc/r$d;)V

    return-void
.end method

.method static synthetic c(Lc/r$e;)Z
    .locals 0

    iget-boolean p0, p0, Lc/r$e;->n:Z

    return p0
.end method

.method static synthetic d(Lc/r$e;)V
    .locals 0

    invoke-direct {p0}, Lc/r$e;->m()V

    return-void
.end method

.method static synthetic e(Lc/r$e;Lc/r$b;Ljava/util/ArrayList;)Ld/d;
    .locals 0

    invoke-direct {p0, p1, p2}, Lc/r$e;->j(Lc/r$b;Ljava/util/ArrayList;)Ld/d;

    move-result-object p0

    return-object p0
.end method

.method private g(Lc/r$d;)V
    .locals 10
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-wide v0, p1, Lc/r$d;->k:J

    iget v2, p0, Lc/r$e;->j:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lc/r$e;->j:I

    iget-object v3, p0, Lc/r$e;->p:Lc/r;

    invoke-static {v3}, Lc/r;->h(Lc/r;)I

    move-result v3

    const/4 v4, 0x0

    if-lt v2, v3, :cond_0

    iput v4, p0, Lc/r$e;->j:I

    :cond_0
    iget-object v2, p0, Lc/r$e;->l:[J

    iget v3, p0, Lc/r$e;->j:I

    aput-wide v0, v2, v3

    iget-object v0, p0, Lc/r$e;->m:[Lc/r$c;

    aget-object v0, v0, v3

    const/4 v1, 0x0

    move-object v2, p1

    move-object v3, v1

    move-object v5, v3

    :goto_0
    if-eqz v2, :cond_8

    if-nez v0, :cond_1

    new-instance v6, Lc/r$c;

    invoke-direct {v6, v1}, Lc/r$c;-><init>(Lc/r$a;)V

    move-object v9, v6

    move-object v6, v0

    move-object v0, v9

    goto :goto_1

    :cond_1
    iget-object v6, v0, Lc/r$c;->t:Lc/r$c;

    iput-object v1, v0, Lc/r$c;->t:Lc/r$c;

    :goto_1
    iget v7, v2, Lc/r$d;->h:I

    if-gez v7, :cond_3

    iget-object v7, v2, Lc/r$d;->g:Landroid/view/View;

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-direct {p0, v7}, Lc/r$e;->k(I)Lc/r$c;

    move-result-object v7

    if-eqz v7, :cond_2

    iget v8, v7, Lc/r$c;->c:I

    goto :goto_2

    :cond_2
    move v8, v4

    :goto_2
    iput v8, v2, Lc/r$d;->h:I

    goto :goto_3

    :cond_3
    move-object v7, v1

    :goto_3
    invoke-virtual {v2, v0}, Lc/r$d;->a(Lc/r$c;)V

    if-nez v3, :cond_4

    move-object v3, v0

    goto :goto_4

    :cond_4
    iput-object v0, v5, Lc/r$c;->t:Lc/r$c;

    :goto_4
    if-eqz v7, :cond_6

    iget v5, v7, Lc/r$c;->c:I

    :goto_5
    if-lez v5, :cond_6

    iget-object v7, v7, Lc/r$c;->t:Lc/r$c;

    add-int/lit8 v5, v5, -0x1

    iget v8, v7, Lc/r$c;->c:I

    add-int/2addr v5, v8

    if-nez v6, :cond_5

    new-instance v8, Lc/r$c;

    invoke-direct {v8, v1}, Lc/r$c;-><init>(Lc/r$a;)V

    move-object v9, v8

    move-object v8, v6

    move-object v6, v9

    goto :goto_6

    :cond_5
    iget-object v8, v6, Lc/r$c;->t:Lc/r$c;

    iput-object v1, v6, Lc/r$c;->t:Lc/r$c;

    :goto_6
    invoke-virtual {v7, v6}, Lc/r$c;->b(Lc/r$c;)V

    iput-object v6, v0, Lc/r$c;->t:Lc/r$c;

    move-object v0, v6

    move-object v6, v8

    goto :goto_5

    :cond_6
    move-object v5, v0

    move-object v0, v6

    iget-object v6, v2, Lc/r$d;->i:Lc/r$d;

    if-nez v6, :cond_7

    sget-object v0, Lc/r;->g:Lc/a;

    new-instance v1, Lc/s;

    invoke-direct {v1, p0, p1, v2}, Lc/s;-><init>(Lc/r$e;Lc/r$d;Lc/r$d;)V

    invoke-virtual {v0, v1}, Lc/a;->execute(Ljava/lang/Runnable;)V

    goto :goto_7

    :cond_7
    move-object v2, v6

    goto :goto_0

    :cond_8
    :goto_7
    iget-object p1, p0, Lc/r$e;->m:[Lc/r$c;

    iget p0, p0, Lc/r$e;->j:I

    aput-object v3, p1, p0

    return-void
.end method

.method private h(Landroid/view/View;Lc/r$d;)Lc/r$d;
    .locals 4

    iget-object v0, p0, Lc/r$e;->p:Lc/r;

    invoke-static {v0}, Lc/r;->j(Lc/r;)Lc/r$d;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/r$e;->p:Lc/r;

    invoke-static {v0}, Lc/r;->j(Lc/r;)Lc/r$d;

    move-result-object v0

    iget-object v2, p0, Lc/r$e;->p:Lc/r;

    invoke-static {v2}, Lc/r;->j(Lc/r;)Lc/r$d;

    move-result-object v3

    iget-object v3, v3, Lc/r$d;->i:Lc/r$d;

    invoke-static {v2, v3}, Lc/r;->k(Lc/r;Lc/r$d;)Lc/r$d;

    iput-object v1, v0, Lc/r$d;->i:Lc/r$d;

    goto :goto_0

    :cond_0
    new-instance v0, Lc/r$d;

    invoke-direct {v0, v1}, Lc/r$d;-><init>(Lc/r$a;)V

    :goto_0
    iput-object p1, v0, Lc/r$d;->g:Landroid/view/View;

    iput-object v0, p2, Lc/r$d;->i:Lc/r$d;

    instance-of p2, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    move-object p2, p1

    check-cast p2, Landroid/view/ViewGroup;

    iget p1, p1, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, -0x7fe00000

    and-int/2addr p1, v2

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lc/r$e;->k:Z

    if-nez p1, :cond_1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    neg-int p0, p0

    iput p0, v0, Lc/r$d;->h:I

    return-object v0

    :cond_1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    iput p1, v0, Lc/r$d;->h:I

    :goto_1
    if-ge v1, p1, :cond_2

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lc/r$e;->h(Landroid/view/View;Lc/r$d;)Lc/r$d;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object v0

    :cond_3
    iput v1, v0, Lc/r$d;->h:I

    return-object v0
.end method

.method private j(Lc/r$b;Ljava/util/ArrayList;)Ld/d;
    .locals 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/r$b;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class;",
            ">;)",
            "Ld/d;"
        }
    .end annotation

    invoke-static {}, Ld/d;->f()Ld/d$b;

    move-result-object v0

    iget-object v1, p0, Lc/r$e;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ld/d$b;->b(Ljava/lang/String;)Ld/d$b;

    move-result-object v0

    iget-object v1, p0, Lc/r$e;->m:[Lc/r$c;

    iget-object v2, p0, Lc/r$e;->p:Lc/r;

    invoke-static {v2}, Lc/r;->h(Lc/r;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Lc/r$e;->j:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lc/r$e;->p:Lc/r;

    invoke-static {v1}, Lc/r;->h(Lc/r;)I

    move-result v1

    :goto_0
    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_1

    iget-object v2, p0, Lc/r$e;->p:Lc/r;

    invoke-static {v2}, Lc/r;->h(Lc/r;)I

    move-result v2

    iget v3, p0, Lc/r$e;->j:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v1

    iget-object v3, p0, Lc/r$e;->p:Lc/r;

    invoke-static {v3}, Lc/r;->h(Lc/r;)I

    move-result v3

    rem-int/2addr v2, v3

    invoke-static {}, Ld/c;->Q()Ld/c$b;

    move-result-object v3

    iget-object v4, p0, Lc/r$e;->m:[Lc/r$c;

    aget-object v4, v4, v2

    invoke-virtual {v4, p1, p2, v3}, Lc/r$c;->a(Lc/r$b;Ljava/util/ArrayList;Ld/c$b;)Lc/r$c;

    invoke-static {}, Ld/b;->f()Ld/b$b;

    move-result-object v4

    invoke-virtual {v4, v3}, Ld/b$b;->a(Ld/c$b;)Ld/b$b;

    move-result-object v3

    iget-object v4, p0, Lc/r$e;->l:[J

    aget-wide v4, v4, v2

    invoke-virtual {v3, v4, v5}, Ld/b$b;->b(J)Ld/b$b;

    move-result-object v2

    invoke-virtual {v0, v2}, Ld/d$b;->a(Ld/b$b;)Ld/d$b;

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lt1/k$b;->build()Lt1/k;

    move-result-object p0

    check-cast p0, Ld/d;

    return-object p0
.end method

.method private k(I)Lc/r$c;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget v0, p0, Lc/r$e;->j:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/r$e;->p:Lc/r;

    invoke-static {v0}, Lc/r;->h(Lc/r;)I

    move-result v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    iget-object p0, p0, Lc/r$e;->m:[Lc/r$c;

    aget-object p0, p0, v0

    :goto_0
    if-eqz p0, :cond_1

    iget v0, p0, Lc/r$c;->b:I

    if-eq v0, p1, :cond_1

    iget-object p0, p0, Lc/r$c;->t:Lc/r$c;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private synthetic l(Lc/r$d;Lc/r$d;)V
    .locals 0

    iget-object p0, p0, Lc/r$e;->p:Lc/r;

    invoke-static {p0, p1, p2}, Lc/r;->l(Lc/r;Lc/r$d;Lc/r$d;)V

    return-void
.end method

.method private m()V
    .locals 1

    iget-object v0, p0, Lc/r$e;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    iget-object v0, p0, Lc/r$e;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    return-void
.end method


# virtual methods
.method f()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/r$e;->n:Z

    iget-object v0, p0, Lc/r$e;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lc/r$e;->m()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/r$e;->g:Landroid/view/View;

    new-instance v1, Lc/r$e$a;

    invoke-direct {v1, p0}, Lc/r$e$a;-><init>(Lc/r$e;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :goto_0
    return-void
.end method

.method i()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/r$e;->n:Z

    iget-object v0, p0, Lc/r$e;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    :cond_0
    return-void
.end method

.method public onDraw()V
    .locals 3

    const-string v0, "view_capture"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lc/r$e;->g:Landroid/view/View;

    iget-object v1, p0, Lc/r$e;->i:Lc/r$d;

    invoke-direct {p0, v0, v1}, Lc/r$e;->h(Landroid/view/View;Lc/r$d;)Lc/r$d;

    iget-object v0, p0, Lc/r$e;->i:Lc/r$d;

    iget-object v0, v0, Lc/r$d;->i:Lc/r$d;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lc/r$e;->o:Ljava/util/function/Consumer;

    iput-object v1, v0, Lc/r$d;->j:Ljava/util/function/Consumer;

    iget-object v1, p0, Lc/r$e;->p:Lc/r;

    invoke-static {v1}, Lc/r;->i(Lc/r;)Landroid/view/Choreographer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v1

    iput-wide v1, v0, Lc/r$d;->k:J

    iget-object v1, p0, Lc/r$e;->p:Lc/r;

    iget-object v1, v1, Lc/r;->c:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/r$e;->k:Z

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method
