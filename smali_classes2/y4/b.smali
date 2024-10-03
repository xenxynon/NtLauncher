.class public final Ly4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li6/m0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly4/b$a;
    }
.end annotation


# static fields
.field public static final h:Ly4/b;

.field static final synthetic i:[Lf6/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lf6/f<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Lb6/a;

.field private static final k:Lkotlinx/coroutines/sync/b;


# instance fields
.field private final synthetic g:Li6/m0;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v0, 0x1

    new-array v1, v0, [Lf6/f;

    new-instance v2, Lkotlin/jvm/internal/v;

    const-class v3, Ly4/b;

    const-string v4, "dataStore"

    const-string v5, "getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;"

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lkotlin/jvm/internal/v;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/b0;->f(Lkotlin/jvm/internal/u;)Lf6/i;

    move-result-object v2

    aput-object v2, v1, v6

    sput-object v1, Ly4/b;->i:[Lf6/f;

    new-instance v1, Ly4/b;

    invoke-direct {v1}, Ly4/b;-><init>()V

    sput-object v1, Ly4/b;->h:Ly4/b;

    const-string v7, "default_home_preferences"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xe

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Landroidx/datastore/preferences/PreferenceDataStoreDelegateKt;->preferencesDataStore$default(Ljava/lang/String;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Ly5/l;Li6/m0;ILjava/lang/Object;)Lb6/a;

    move-result-object v1

    sput-object v1, Ly4/b;->j:Lb6/a;

    const/4 v1, 0x0

    invoke-static {v6, v0, v1}, Lkotlinx/coroutines/sync/d;->b(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/b;

    move-result-object v0

    sput-object v0, Ly4/b;->k:Lkotlinx/coroutines/sync/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, v0}, Li6/r2;->b(Li6/v1;ILjava/lang/Object;)Li6/z;

    move-result-object v0

    invoke-static {}, Li6/b1;->b()Li6/i0;

    move-result-object v1

    invoke-interface {v0, v1}, Lq5/g;->plus(Lq5/g;)Lq5/g;

    move-result-object v0

    invoke-static {v0}, Li6/n0;->a(Lq5/g;)Li6/m0;

    move-result-object v0

    iput-object v0, p0, Ly4/b;->g:Li6/m0;

    return-void
.end method

.method public static final synthetic a(Ly4/b;Landroidx/datastore/preferences/core/Preferences;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Ly4/b;->f(Landroidx/datastore/preferences/core/Preferences;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Ly4/b;Landroid/content/ComponentName;Ljava/util/function/Consumer;Lq5/d;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ly4/b;->j(Landroid/content/ComponentName;Ljava/util/function/Consumer;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final c(Landroid/content/Context;)Landroidx/datastore/core/DataStore;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroidx/datastore/core/DataStore<",
            "Landroidx/datastore/preferences/core/Preferences;",
            ">;"
        }
    .end annotation

    sget-object p0, Ly4/b;->j:Lb6/a;

    sget-object v0, Ly4/b;->i:[Lf6/f;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {p0, p1, v0}, Lb6/a;->getValue(Ljava/lang/Object;Lf6/f;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/datastore/core/DataStore;

    return-object p0
.end method

.method private final d(Landroid/content/Intent;Landroid/content/ComponentName;)Z
    .locals 1

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    const-string v0, "android.intent.action.ACTION_PREFERRED_ACTIVITY_CHANGED"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    :cond_1
    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private final e(Ljava/lang/String;)V
    .locals 1

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "launcher_package"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Li4/c;->b:Li4/c$b;

    invoke-virtual {p1}, Li4/c$b;->a()Li4/c;

    move-result-object p1

    const-string v0, "launcher_default"

    invoke-virtual {p1, v0, p0}, Li4/c;->e(Ljava/lang/String;Landroid/os/Bundle;)Z

    return-void
.end method

.method private final f(Landroidx/datastore/preferences/core/Preferences;)Ljava/lang/String;
    .locals 0

    sget-object p0, Ly4/b$a;->a:Ly4/b$a;

    invoke-virtual {p0}, Ly4/b$a;->a()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/datastore/preferences/core/Preferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    sget-object p0, Lcom/nothing/launcher/NTLauncherApplication;->i:Lcom/nothing/launcher/NTLauncherApplication$a;

    invoke-virtual {p0}, Lcom/nothing/launcher/NTLauncherApplication$a;->g()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private final g(Ljava/lang/String;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Ly4/b;->e(Ljava/lang/String;)V

    return-void
.end method

.method private final h(Lq5/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/d<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Lv2/a;->g:Lv2/a$a;

    invoke-virtual {v0}, Lv2/a$a;->a()Landroid/app/Application;

    move-result-object v0

    invoke-direct {p0, v0}, Ly4/b;->c(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object p0

    invoke-interface {p0}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/e;

    move-result-object p0

    new-instance v0, Ly4/b$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ly4/b$c;-><init>(Lq5/d;)V

    invoke-static {p0, v0}, Lkotlinx/coroutines/flow/g;->f(Lkotlinx/coroutines/flow/e;Ly5/q;)Lkotlinx/coroutines/flow/e;

    move-result-object p0

    new-instance v0, Ly4/b$b;

    invoke-direct {v0, p0}, Ly4/b$b;-><init>(Lkotlinx/coroutines/flow/e;)V

    invoke-static {v0, p1}, Lkotlinx/coroutines/flow/g;->o(Lkotlinx/coroutines/flow/e;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final j(Landroid/content/ComponentName;Ljava/util/function/Consumer;Lq5/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Ly4/b$e;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Ly4/b$e;

    iget v1, v0, Ly4/b$e;->l:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ly4/b$e;->l:I

    goto :goto_0

    :cond_0
    new-instance v0, Ly4/b$e;

    invoke-direct {v0, p0, p3}, Ly4/b$e;-><init>(Ly4/b;Lq5/d;)V

    :goto_0
    iget-object p0, v0, Ly4/b$e;->j:Ljava/lang/Object;

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p3

    iget v1, v0, Ly4/b$e;->l:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_4

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v0, Ly4/b$e;->i:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p2, v0, Ly4/b$e;->h:Ljava/lang/Object;

    check-cast p2, Lkotlinx/coroutines/sync/b;

    iget-object p3, v0, Ly4/b$e;->g:Ljava/lang/Object;

    check-cast p3, Ljava/util/function/Consumer;

    :try_start_0
    invoke-static {p0}, Ln5/m;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p1, v0, Ly4/b$e;->i:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p2, v0, Ly4/b$e;->h:Ljava/lang/Object;

    check-cast p2, Lkotlinx/coroutines/sync/b;

    iget-object v1, v0, Ly4/b$e;->g:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/Consumer;

    :try_start_1
    invoke-static {p0}, Ln5/m;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_3
    iget-object p1, v0, Ly4/b$e;->i:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/sync/b;

    iget-object p2, v0, Ly4/b$e;->h:Ljava/lang/Object;

    check-cast p2, Ljava/util/function/Consumer;

    iget-object v1, v0, Ly4/b$e;->g:Ljava/lang/Object;

    check-cast v1, Landroid/content/ComponentName;

    invoke-static {p0}, Ln5/m;->b(Ljava/lang/Object;)V

    move-object p0, p1

    move-object p1, v1

    goto :goto_2

    :cond_4
    invoke-static {p0}, Ln5/m;->b(Ljava/lang/Object;)V

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_5
    move-object p0, v5

    :goto_1
    if-nez p0, :cond_6

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :cond_6
    sget-object p0, Ly4/b;->k:Lkotlinx/coroutines/sync/b;

    iput-object p1, v0, Ly4/b$e;->g:Ljava/lang/Object;

    iput-object p2, v0, Ly4/b$e;->h:Ljava/lang/Object;

    iput-object p0, v0, Ly4/b$e;->i:Ljava/lang/Object;

    iput v4, v0, Ly4/b$e;->l:I

    invoke-interface {p0, v5, v0}, Lkotlinx/coroutines/sync/b;->a(Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p3, :cond_7

    return-object p3

    :cond_7
    :goto_2
    :try_start_2
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ly4/b;->h:Ly4/b;

    iput-object p2, v0, Ly4/b$e;->g:Ljava/lang/Object;

    iput-object p0, v0, Ly4/b$e;->h:Ljava/lang/Object;

    iput-object p1, v0, Ly4/b$e;->i:Ljava/lang/Object;

    iput v3, v0, Ly4/b$e;->l:I

    invoke-direct {v1, v0}, Ly4/b;->h(Lq5/d;)Ljava/lang/Object;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v1, p3, :cond_8

    return-object p3

    :cond_8
    move-object v6, p2

    move-object p2, p0

    move-object p0, v1

    move-object v1, v6

    :goto_3
    :try_start_3
    check-cast p0, Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    sget-object p0, Ly4/b;->h:Ly4/b;

    iput-object v1, v0, Ly4/b$e;->g:Ljava/lang/Object;

    iput-object p2, v0, Ly4/b$e;->h:Ljava/lang/Object;

    iput-object p1, v0, Ly4/b$e;->i:Ljava/lang/Object;

    iput v2, v0, Ly4/b$e;->l:I

    invoke-direct {p0, p1, v0}, Ly4/b;->k(Ljava/lang/String;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p3, :cond_9

    return-object p3

    :cond_9
    move-object p3, v1

    :goto_4
    sget-object p0, Ly4/b;->h:Ly4/b;

    const-string v0, "currentDefaultHomePackageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Ly4/b;->g(Ljava/lang/String;Ljava/util/function/Consumer;)V

    :cond_a
    sget-object p0, Ln5/t;->a:Ln5/t;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-interface {p2, v5}, Lkotlinx/coroutines/sync/b;->b(Ljava/lang/Object;)V

    return-object p0

    :catchall_1
    move-exception p1

    move-object p2, p0

    move-object p0, p1

    :goto_5
    invoke-interface {p2, v5}, Lkotlinx/coroutines/sync/b;->b(Ljava/lang/Object;)V

    throw p0
.end method

.method private final k(Ljava/lang/String;Lq5/d;)Ljava/lang/Object;
    .locals 2
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

    sget-object v0, Lv2/a;->g:Lv2/a$a;

    invoke-virtual {v0}, Lv2/a$a;->a()Landroid/app/Application;

    move-result-object v0

    invoke-direct {p0, v0}, Ly4/b;->c(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object p0

    new-instance v0, Ly4/b$f;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ly4/b$f;-><init>(Ljava/lang/String;Lq5/d;)V

    invoke-static {p0, v0, p2}, Landroidx/datastore/preferences/core/PreferencesKt;->edit(Landroidx/datastore/core/DataStore;Ly5/p;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method


# virtual methods
.method public getCoroutineContext()Lq5/g;
    .locals 0

    iget-object p0, p0, Ly4/b;->g:Li6/m0;

    invoke-interface {p0}, Li6/m0;->getCoroutineContext()Lq5/g;

    move-result-object p0

    return-object p0
.end method

.method public final i(Landroid/content/Intent;Landroid/content/ComponentName;Ljava/util/function/Consumer;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/ComponentName;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ly4/b;->d(Landroid/content/Intent;Landroid/content/ComponentName;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Ly4/b$d;

    const/4 p1, 0x0

    invoke-direct {v3, p2, p3, p4, p1}, Ly4/b$d;-><init>(Landroid/content/ComponentName;Ljava/util/function/Consumer;ZLq5/d;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Li6/h;->b(Li6/m0;Lq5/g;Li6/o0;Ly5/p;ILjava/lang/Object;)Li6/v1;

    :cond_0
    return-void
.end method
