.class final Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Ly5/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.nothing.launcher.setting.screenlayout.ScreenLayoutConfigFragment$subscribeUI$1$1"
    f = "ScreenLayoutConfigFragment.kt"
    l = {
        0x4b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field g:I

.field private synthetic h:Ljava/lang/Object;

.field final synthetic i:Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;

.field final synthetic j:Li6/j0;

.field final synthetic k:Landroid/view/ContextThemeWrapper;


# direct methods
.method constructor <init>(Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;Li6/j0;Landroid/view/ContextThemeWrapper;Lq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;",
            "Li6/j0;",
            "Landroid/view/ContextThemeWrapper;",
            "Lq5/d<",
            "-",
            "Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a;->i:Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;

    iput-object p2, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a;->j:Li6/j0;

    iput-object p3, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a;->k:Landroid/view/ContextThemeWrapper;

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

    new-instance v0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a;

    iget-object v1, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a;->i:Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;

    iget-object v2, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a;->j:Li6/j0;

    iget-object p0, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a;->k:Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, v1, v2, p0, p2}, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a;-><init>(Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;Li6/j0;Landroid/view/ContextThemeWrapper;Lq5/d;)V

    iput-object p1, v0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a;->h:Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a;->create(Ljava/lang/Object;Lq5/d;)Lq5/d;

    move-result-object p0

    check-cast p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a;

    sget-object p1, Ln5/t;->a:Ln5/t;

    invoke-virtual {p0, p1}, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Li6/m0;

    check-cast p2, Lq5/d;

    invoke-virtual {p0, p1, p2}, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a;->invoke(Li6/m0;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a;->g:I

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

    iget-object p1, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a;->h:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Li6/m0;

    iget-object p1, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a;->i:Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;

    invoke-virtual {p1}, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;->s()Lcom/nothing/launcher/setting/screenlayout/a;

    move-result-object v8

    iget-object v4, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a;->i:Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;

    iget-object v6, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a;->j:Li6/j0;

    iget-object v7, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a;->k:Landroid/view/ContextThemeWrapper;

    invoke-virtual {v8}, Lcom/nothing/launcher/setting/screenlayout/a;->q()Lkotlinx/coroutines/flow/c0;

    move-result-object p1

    new-instance v1, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a$a;

    const/4 v9, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a$a;-><init>(Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;Li6/m0;Li6/j0;Landroid/view/ContextThemeWrapper;Lcom/nothing/launcher/setting/screenlayout/a;Lq5/d;)V

    iput v2, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g$a;->g:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/flow/g;->i(Lkotlinx/coroutines/flow/e;Ly5/p;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method
