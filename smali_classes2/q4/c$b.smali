.class final Lq4/c$b;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Ly5/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq4/c;->f(Lq4/c$a;I)V
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
    c = "com.nothing.launcher.setting.iconpack.IconPackListAdapter$onBindViewHolder$1$1"
    f = "IconPackListAdapter.kt"
    l = {
        0x71,
        0x7d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field g:I

.field private synthetic h:Ljava/lang/Object;

.field final synthetic i:Lq4/c;

.field final synthetic j:I

.field final synthetic k:Lr4/a;


# direct methods
.method constructor <init>(Lq4/c;ILr4/a;Lq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq4/c;",
            "I",
            "Lr4/a;",
            "Lq5/d<",
            "-",
            "Lq4/c$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lq4/c$b;->i:Lq4/c;

    iput p2, p0, Lq4/c$b;->j:I

    iput-object p3, p0, Lq4/c$b;->k:Lr4/a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILq5/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lq5/d;)Lq5/d;
    .locals 3
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

    new-instance v0, Lq4/c$b;

    iget-object v1, p0, Lq4/c$b;->i:Lq4/c;

    iget v2, p0, Lq4/c$b;->j:I

    iget-object p0, p0, Lq4/c$b;->k:Lr4/a;

    invoke-direct {v0, v1, v2, p0, p2}, Lq4/c$b;-><init>(Lq4/c;ILr4/a;Lq5/d;)V

    iput-object p1, v0, Lq4/c$b;->h:Ljava/lang/Object;

    return-object v0
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

    invoke-virtual {p0, p1, p2}, Lq4/c$b;->create(Ljava/lang/Object;Lq5/d;)Lq5/d;

    move-result-object p0

    check-cast p0, Lq4/c$b;

    sget-object p1, Ln5/t;->a:Ln5/t;

    invoke-virtual {p0, p1}, Lq4/c$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Li6/m0;

    check-cast p2, Lq5/d;

    invoke-virtual {p0, p1, p2}, Lq4/c$b;->invoke(Li6/m0;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lq4/c$b;->g:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lq4/c$b;->h:Ljava/lang/Object;

    check-cast p1, Li6/m0;

    iget-object v1, p0, Lq4/c$b;->i:Lq4/c;

    iget-object v4, p0, Lq4/c$b;->k:Lr4/a;

    sget-object v5, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {v5}, Lo3/b$b;->a()Lo3/b;

    move-result-object v5

    invoke-virtual {v1}, Lq4/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v4}, Lr4/a;->d()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v4, v6}, Lo3/b;->O(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move-object p1, v4

    :goto_0
    if-eqz p1, :cond_4

    iget-object p1, p0, Lq4/c$b;->i:Lq4/c;

    iget-object v1, p0, Lq4/c$b;->k:Lr4/a;

    iget v5, p0, Lq4/c$b;->j:I

    invoke-static {}, Li6/b1;->c()Li6/g2;

    move-result-object v6

    new-instance v7, Lq4/c$b$a;

    invoke-direct {v7, p1, v1, v5, v4}, Lq4/c$b$a;-><init>(Lq4/c;Lr4/a;ILq5/d;)V

    iput v3, p0, Lq4/c$b;->g:I

    invoke-static {v6, v7, p0}, Li6/h;->e(Lq5/g;Ly5/p;Lq5/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    const-wide/16 v3, 0x96

    iput v2, p0, Lq4/c$b;->g:I

    invoke-static {v3, v4, p0}, Li6/v0;->a(JLq5/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_2
    iget-object p1, p0, Lq4/c$b;->i:Lq4/c;

    invoke-virtual {p1}, Lq4/c;->e()Ly5/l;

    move-result-object p1

    if-eqz p1, :cond_6

    iget p0, p0, Lq4/c$b;->j:I

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/b;->c(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ly5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method
