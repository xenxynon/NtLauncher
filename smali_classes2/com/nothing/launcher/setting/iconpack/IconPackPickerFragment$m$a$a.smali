.class final Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$m$a$a;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Ly5/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$m$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Ly5/p<",
        "Ljava/lang/String;",
        "Lq5/d<",
        "-",
        "Ln5/t;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "com.nothing.launcher.setting.iconpack.IconPackPickerFragment$subscribeUI$2$1$1"
    f = "IconPackPickerFragment.kt"
    l = {
        0xb5
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field g:Ljava/lang/Object;

.field h:Ljava/lang/Object;

.field i:I

.field synthetic j:Ljava/lang/Object;

.field final synthetic k:Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;

.field final synthetic l:Li6/m0;


# direct methods
.method constructor <init>(Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;Li6/m0;Lq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;",
            "Li6/m0;",
            "Lq5/d<",
            "-",
            "Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$m$a$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$m$a$a;->k:Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;

    iput-object p2, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$m$a$a;->l:Li6/m0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILq5/d;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lq5/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$m$a$a;->create(Ljava/lang/Object;Lq5/d;)Lq5/d;

    move-result-object p0

    check-cast p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$m$a$a;

    sget-object p1, Ln5/t;->a:Ln5/t;

    invoke-virtual {p0, p1}, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$m$a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

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

    new-instance v0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$m$a$a;

    iget-object v1, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$m$a$a;->k:Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;

    iget-object p0, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$m$a$a;->l:Li6/m0;

    invoke-direct {v0, v1, p0, p2}, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$m$a$a;-><init>(Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;Li6/m0;Lq5/d;)V

    iput-object p1, v0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$m$a$a;->j:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lq5/d;

    invoke-virtual {p0, p1, p2}, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$m$a$a;->a(Ljava/lang/String;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$m$a$a;->i:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$m$a$a;->h:Ljava/lang/Object;

    check-cast v0, Li6/m0;

    iget-object v1, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$m$a$a;->g:Ljava/lang/Object;

    check-cast v1, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;

    iget-object p0, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$m$a$a;->j:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$m$a$a;->j:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v1, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$m$a$a;->k:Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;

    iget-object v3, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$m$a$a;->l:Li6/m0;

    invoke-static {v1}, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;->r(Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;)Li6/v1;

    move-result-object v4

    if-eqz v4, :cond_3

    iput-object p1, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$m$a$a;->j:Ljava/lang/Object;

    iput-object v1, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$m$a$a;->g:Ljava/lang/Object;

    iput-object v3, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$m$a$a;->h:Ljava/lang/Object;

    iput v2, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$m$a$a;->i:I

    invoke-static {v4, p0}, Li6/z1;->e(Li6/v1;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    move-object p0, p1

    move-object v0, v3

    :goto_0
    move-object p1, p0

    move-object v2, v0

    goto :goto_1

    :cond_3
    move-object v2, v3

    :goto_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$m$a$a$a;

    const/4 p0, 0x0

    invoke-direct {v5, p1, p0}, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$m$a$a$a;-><init>(Ljava/lang/String;Lq5/d;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Li6/h;->b(Li6/m0;Lq5/g;Li6/o0;Ly5/p;ILjava/lang/Object;)Li6/v1;

    move-result-object v0

    invoke-static {v1}, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;->p(Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;)Lcom/android/launcher3/databinding/FragmentIconPackPickerBinding;

    move-result-object v2

    if-nez v2, :cond_4

    const-string v2, "binding"

    invoke-static {v2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v2, p0

    :cond_4
    iget-object v2, v2, Lcom/android/launcher3/databinding/FragmentIconPackPickerBinding;->containerIconPackSwitch:Landroid/widget/LinearLayout;

    const-string v3, "binding.containerIconPackSwitch"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {v3}, Lo3/b$b;->a()Lo3/b;

    move-result-object v3

    invoke-virtual {v3}, Lo3/b;->u()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    const/16 v3, 0x8

    :goto_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v1}, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;->v(Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;)Lq4/g;

    move-result-object v2

    if-nez v2, :cond_6

    const-string v2, "previewListAdapter"

    invoke-static {v2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    move-object p0, v2

    :goto_3
    invoke-virtual {p0}, Lq4/g;->e()V

    new-instance p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$m$a$a$b;

    invoke-direct {p0, v1, p1}, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$m$a$a$b;-><init>(Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;Ljava/lang/String;)V

    invoke-interface {v0, p0}, Li6/v1;->p(Ly5/l;)Li6/c1;

    invoke-static {v1, v0}, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;->w(Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;Li6/v1;)V

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method
