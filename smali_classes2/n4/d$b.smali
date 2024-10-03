.class final Ln4/d$b;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Ly5/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln4/d;->f(Landroid/content/Context;Landroid/graphics/Rect;)V
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
    c = "com.nothing.launcher.setting.BasePreviewActivityViewModel$loadPreviewData$1"
    f = "BasePreviewActivityViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field g:I

.field final synthetic h:Ln4/d;

.field final synthetic i:Landroid/content/Context;

.field final synthetic j:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Ln4/d;Landroid/content/Context;Landroid/graphics/Rect;Lq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln4/d;",
            "Landroid/content/Context;",
            "Landroid/graphics/Rect;",
            "Lq5/d<",
            "-",
            "Ln4/d$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ln4/d$b;->h:Ln4/d;

    iput-object p2, p0, Ln4/d$b;->i:Landroid/content/Context;

    iput-object p3, p0, Ln4/d$b;->j:Landroid/graphics/Rect;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILq5/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lq5/d;)Lq5/d;
    .locals 2
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

    new-instance p1, Ln4/d$b;

    iget-object v0, p0, Ln4/d$b;->h:Ln4/d;

    iget-object v1, p0, Ln4/d$b;->i:Landroid/content/Context;

    iget-object p0, p0, Ln4/d$b;->j:Landroid/graphics/Rect;

    invoke-direct {p1, v0, v1, p0, p2}, Ln4/d$b;-><init>(Ln4/d;Landroid/content/Context;Landroid/graphics/Rect;Lq5/d;)V

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

    invoke-virtual {p0, p1, p2}, Ln4/d$b;->create(Ljava/lang/Object;Lq5/d;)Lq5/d;

    move-result-object p0

    check-cast p0, Ln4/d$b;

    sget-object p1, Ln5/t;->a:Ln5/t;

    invoke-virtual {p0, p1}, Ln4/d$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Li6/m0;

    check-cast p2, Lq5/d;

    invoke-virtual {p0, p1, p2}, Ln4/d$b;->invoke(Li6/m0;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    iget v0, p0, Ln4/d$b;->g:I

    if-nez v0, :cond_1

    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Ln4/d$b;->h:Ln4/d;

    iget-object v0, p0, Ln4/d$b;->i:Landroid/content/Context;

    iget-object v1, p0, Ln4/d$b;->j:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Ln4/d;->g(Landroid/content/Context;Landroid/graphics/Rect;)V

    iget-object p1, p0, Ln4/d$b;->h:Ln4/d;

    invoke-static {p1}, Ln4/d;->b(Ln4/d;)Lkotlinx/coroutines/flow/u;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/flow/u;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Ln4/d$b;->h:Ln4/d;

    iget-object p0, p0, Ln4/d$b;->i:Landroid/content/Context;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p1, p0, v1, v0, v1}, Ln4/d;->i(Ln4/d;Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;ILjava/lang/Object;)V

    :cond_0
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
