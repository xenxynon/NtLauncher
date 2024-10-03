.class final Ly4/b$d;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Ly5/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly4/b;->i(Landroid/content/Intent;Landroid/content/ComponentName;Ljava/util/function/Consumer;Z)V
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
    c = "com.nothing.launcher.track.DefaultHomeTracker$track$1"
    f = "DefaultHomeTracker.kt"
    l = {
        0x38
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field g:I

.field final synthetic h:Landroid/content/ComponentName;

.field final synthetic i:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic j:Z


# direct methods
.method constructor <init>(Landroid/content/ComponentName;Ljava/util/function/Consumer;ZLq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;Z",
            "Lq5/d<",
            "-",
            "Ly4/b$d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ly4/b$d;->h:Landroid/content/ComponentName;

    iput-object p2, p0, Ly4/b$d;->i:Ljava/util/function/Consumer;

    iput-boolean p3, p0, Ly4/b$d;->j:Z

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

    new-instance p1, Ly4/b$d;

    iget-object v0, p0, Ly4/b$d;->h:Landroid/content/ComponentName;

    iget-object v1, p0, Ly4/b$d;->i:Ljava/util/function/Consumer;

    iget-boolean p0, p0, Ly4/b$d;->j:Z

    invoke-direct {p1, v0, v1, p0, p2}, Ly4/b$d;-><init>(Landroid/content/ComponentName;Ljava/util/function/Consumer;ZLq5/d;)V

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

    invoke-virtual {p0, p1, p2}, Ly4/b$d;->create(Ljava/lang/Object;Lq5/d;)Lq5/d;

    move-result-object p0

    check-cast p0, Ly4/b$d;

    sget-object p1, Ln5/t;->a:Ln5/t;

    invoke-virtual {p0, p1}, Ly4/b$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Li6/m0;

    check-cast p2, Lq5/d;

    invoke-virtual {p0, p1, p2}, Ly4/b$d;->invoke(Li6/m0;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Ly4/b$d;->g:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    sget-object p1, Ly4/b;->h:Ly4/b;

    iget-object v1, p0, Ly4/b$d;->h:Landroid/content/ComponentName;

    iget-object v3, p0, Ly4/b$d;->i:Ljava/util/function/Consumer;

    iput v2, p0, Ly4/b$d;->g:I

    invoke-static {p1, v1, v3, p0}, Ly4/b;->b(Ly4/b;Landroid/content/ComponentName;Ljava/util/function/Consumer;Lq5/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    iget-boolean p0, p0, Ly4/b$d;->j:Z

    if-eqz p0, :cond_3

    sget-object p0, Lcom/nothing/launcher/track/a;->a:Lcom/nothing/launcher/track/a;

    sget-object p1, Lv2/a;->g:Lv2/a$a;

    invoke-virtual {p1}, Lv2/a$a;->a()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/nothing/launcher/track/a;->e(Landroid/content/Context;)V

    goto :goto_1

    :cond_3
    sget-object p0, Lcom/nothing/launcher/track/a;->a:Lcom/nothing/launcher/track/a;

    sget-object p1, Lv2/a;->g:Lv2/a$a;

    invoke-virtual {p1}, Lv2/a$a;->a()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/nothing/launcher/track/a;->a(Landroid/content/Context;)V

    :goto_1
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method
