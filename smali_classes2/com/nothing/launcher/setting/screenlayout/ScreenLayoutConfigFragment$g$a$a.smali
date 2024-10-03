.class final Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a$a;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Ly5/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Ly5/p<",
        "Lt4/e;",
        "Lq5/d<",
        "-",
        "Ln5/t;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "com.nothing.launcher.setting.screenlayout.ScreenLayoutConfigFragment$subscribeUI$1$1$1$1"
    f = "ScreenLayoutConfigFragment.kt"
    l = {
        0x5d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field g:Ljava/lang/Object;

.field h:Ljava/lang/Object;

.field i:Ljava/lang/Object;

.field j:Ljava/lang/Object;

.field k:I

.field synthetic l:Ljava/lang/Object;

.field final synthetic m:Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;

.field final synthetic n:Li6/m0;

.field final synthetic o:Li6/j0;

.field final synthetic p:Landroid/view/ContextThemeWrapper;

.field final synthetic q:Lcom/nothing/launcher/setting/screenlayout/a;


# direct methods
.method constructor <init>(Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;Li6/m0;Li6/j0;Landroid/view/ContextThemeWrapper;Lcom/nothing/launcher/setting/screenlayout/a;Lq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;",
            "Li6/m0;",
            "Li6/j0;",
            "Landroid/view/ContextThemeWrapper;",
            "Lcom/nothing/launcher/setting/screenlayout/a;",
            "Lq5/d<",
            "-",
            "Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a$a;->m:Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;

    iput-object p2, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a$a;->n:Li6/m0;

    iput-object p3, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a$a;->o:Li6/j0;

    iput-object p4, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a$a;->p:Landroid/view/ContextThemeWrapper;

    iput-object p5, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a$a;->q:Lcom/nothing/launcher/setting/screenlayout/a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILq5/d;)V

    return-void
.end method


# virtual methods
.method public final a(Lt4/e;Lq5/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt4/e;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a$a;->create(Ljava/lang/Object;Lq5/d;)Lq5/d;

    move-result-object p0

    check-cast p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a$a;

    sget-object p1, Ln5/t;->a:Ln5/t;

    invoke-virtual {p0, p1}, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final create(Ljava/lang/Object;Lq5/d;)Lq5/d;
    .locals 8
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

    new-instance v7, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a$a;

    iget-object v1, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a$a;->m:Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;

    iget-object v2, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a$a;->n:Li6/m0;

    iget-object v3, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a$a;->o:Li6/j0;

    iget-object v4, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a$a;->p:Landroid/view/ContextThemeWrapper;

    iget-object v5, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a$a;->q:Lcom/nothing/launcher/setting/screenlayout/a;

    move-object v0, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a$a;-><init>(Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;Li6/m0;Li6/j0;Landroid/view/ContextThemeWrapper;Lcom/nothing/launcher/setting/screenlayout/a;Lq5/d;)V

    iput-object p1, v7, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a$a;->l:Ljava/lang/Object;

    return-object v7
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lt4/e;

    check-cast p2, Lq5/d;

    invoke-virtual {p0, p1, p2}, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a$a;->a(Lt4/e;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a$a;->k:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a$a;->j:Ljava/lang/Object;

    check-cast v0, Ly5/l;

    iget-object v1, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a$a;->i:Ljava/lang/Object;

    check-cast v1, Lt4/e;

    iget-object v2, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a$a;->h:Ljava/lang/Object;

    check-cast v2, Li6/j0;

    iget-object v3, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a$a;->g:Ljava/lang/Object;

    check-cast v3, Li6/m0;

    iget-object p0, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a$a;->l:Ljava/lang/Object;

    check-cast p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;

    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a$a;->l:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lt4/e;

    if-eqz v1, :cond_5

    iget-object p1, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a$a;->m:Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;

    iget-object v3, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a$a;->n:Li6/m0;

    iget-object v4, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a$a;->o:Li6/j0;

    iget-object v5, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a$a;->p:Landroid/view/ContextThemeWrapper;

    iget-object v6, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a$a;->q:Lcom/nothing/launcher/setting/screenlayout/a;

    new-instance v7, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a$a$b;

    invoke-direct {v7, p1, v5, v6}, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a$a$b;-><init>(Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;Landroid/view/ContextThemeWrapper;Lcom/nothing/launcher/setting/screenlayout/a;)V

    invoke-static {p1}, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;->p(Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {p1, v5, v6}, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;->r(Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;J)V

    invoke-static {p1}, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;->n(Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;)Li6/v1;

    move-result-object v5

    if-eqz v5, :cond_3

    iput-object p1, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a$a;->l:Ljava/lang/Object;

    iput-object v3, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a$a;->g:Ljava/lang/Object;

    iput-object v4, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a$a;->h:Ljava/lang/Object;

    iput-object v1, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a$a;->i:Ljava/lang/Object;

    iput-object v7, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a$a;->j:Ljava/lang/Object;

    iput v2, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a$a;->k:I

    invoke-static {v5, p0}, Li6/z1;->e(Li6/v1;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    move-object p0, p1

    move-object v2, v4

    move-object v0, v7

    :goto_0
    move-object p1, p0

    move-object v7, v0

    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    goto :goto_1

    :cond_3
    move-object v2, v3

    move-object v3, v4

    :goto_1
    const/4 v4, 0x0

    new-instance v5, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a$a$a;

    const/4 p0, 0x0

    invoke-direct {v5, v7, v1, p0}, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a$a$a;-><init>(Ly5/l;Lt4/e;Lq5/d;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Li6/h;->b(Li6/m0;Lq5/g;Li6/o0;Ly5/p;ILjava/lang/Object;)Li6/v1;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;->q(Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;Li6/v1;)V

    goto :goto_2

    :cond_4
    invoke-interface {v7, v1}, Ly5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_2
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method
