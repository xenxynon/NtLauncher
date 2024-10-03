.class final Lg4/g$d;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Ly5/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg4/g;->q(Ljava/util/concurrent/CopyOnWriteArrayList;)Lkotlinx/coroutines/flow/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Ly5/r<",
        "Lkotlinx/coroutines/flow/f<",
        "-",
        "Ln5/k<",
        "+[",
        "Lcom/android/launcher3/model/data/AppInfo;",
        "+[",
        "Lcom/android/launcher3/model/data/AppInfo;",
        ">;>;[",
        "Lcom/android/launcher3/model/data/AppInfo;",
        "Ljava/util/List<",
        "+",
        "Lg4/c;",
        ">;",
        "Lq5/d<",
        "-",
        "Ln5/t;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "com.nothing.launcher.model.HiddenAppsViewModel$getAllAppsWithHiddenApps$2"
    f = "HiddenAppsViewModel.kt"
    l = {
        0xb1
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field g:I

.field private synthetic h:Ljava/lang/Object;

.field synthetic i:Ljava/lang/Object;

.field synthetic j:Ljava/lang/Object;

.field final synthetic k:Lg4/g;


# direct methods
.method constructor <init>(Lg4/g;Lq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg4/g;",
            "Lq5/d<",
            "-",
            "Lg4/g$d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lg4/g$d;->k:Lg4/g;

    const/4 p1, 0x4

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILq5/d;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/flow/f;[Lcom/android/launcher3/model/data/AppInfo;Ljava/util/List;Lq5/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/f<",
            "-",
            "Ln5/k<",
            "[",
            "Lcom/android/launcher3/model/data/AppInfo;",
            "[",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;>;[",
            "Lcom/android/launcher3/model/data/AppInfo;",
            "Ljava/util/List<",
            "Lg4/c;",
            ">;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lg4/g$d;

    iget-object p0, p0, Lg4/g$d;->k:Lg4/g;

    invoke-direct {v0, p0, p4}, Lg4/g$d;-><init>(Lg4/g;Lq5/d;)V

    iput-object p1, v0, Lg4/g$d;->h:Ljava/lang/Object;

    iput-object p2, v0, Lg4/g$d;->i:Ljava/lang/Object;

    iput-object p3, v0, Lg4/g$d;->j:Ljava/lang/Object;

    sget-object p0, Ln5/t;->a:Ln5/t;

    invoke-virtual {v0, p0}, Lg4/g$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/f;

    check-cast p2, [Lcom/android/launcher3/model/data/AppInfo;

    check-cast p3, Ljava/util/List;

    check-cast p4, Lq5/d;

    invoke-virtual {p0, p1, p2, p3, p4}, Lg4/g$d;->a(Lkotlinx/coroutines/flow/f;[Lcom/android/launcher3/model/data/AppInfo;Ljava/util/List;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lg4/g$d;->g:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lg4/g$d;->h:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/f;

    iget-object v1, p0, Lg4/g$d;->i:Ljava/lang/Object;

    check-cast v1, [Lcom/android/launcher3/model/data/AppInfo;

    iget-object v3, p0, Lg4/g$d;->j:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lg4/g$d;->k:Lg4/g;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz v8, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg4/c;

    invoke-static {v7}, Lg4/g;->i(Lg4/g;)Lcom/android/launcher3/pm/UserCache;

    move-result-object v11

    invoke-virtual {v8}, Lg4/c;->e()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lcom/android/launcher3/pm/UserCache;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v11

    const-string v12, "HiddenAppsViewModel"

    if-eqz v11, :cond_7

    invoke-virtual {v8}, Lg4/c;->c()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v10}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    if-nez v13, :cond_4

    invoke-static {v7}, Lg4/g;->h(Lg4/g;)Lcom/android/launcher3/util/PackageManagerHelper;

    move-result-object v13

    invoke-virtual {v10}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10, v11}, Lcom/android/launcher3/util/PackageManagerHelper;->getAppLaunchIntent(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/Intent;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    :cond_3
    move-object v13, v9

    :cond_4
    new-instance v9, Lcom/android/launcher3/util/ComponentKey;

    invoke-direct {v9, v13, v11}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-static {v7, v1, v9}, Lg4/g;->d(Lg4/g;[Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/util/ComponentKey;)Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v8

    :goto_1
    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    goto :goto_0

    :cond_5
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hide App not found, remove from db, componentKey = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Lcom/android/launcher3/logging/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7, v1, v9}, Lg4/g;->b(Lg4/g;[Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/util/ComponentKey;)Ln5/k;

    move-result-object v8

    invoke-virtual {v8}, Ln5/k;->c()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg4/c;

    invoke-virtual {v8}, Ln5/k;->d()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v10, :cond_6

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "hide App need to be converted, old componentKey = "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", new entry is "

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lg4/c;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ". "

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Lcom/android/launcher3/logging/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-eqz v8, :cond_2

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v8

    goto :goto_1

    :cond_7
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hide App\'s user not found, remove from db, intent = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lg4/c;->c()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", userId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lg4/c;->e()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Lcom/android/launcher3/logging/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    if-eqz v3, :cond_9

    iget-object v3, p0, Lg4/g$d;->k:Lg4/g;

    invoke-static {v3}, Lg4/g;->e(Lg4/g;)Lg4/d;

    move-result-object v3

    new-array v7, v10, [Lg4/c;

    invoke-interface {v5, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lg4/c;

    array-length v7, v5

    invoke-static {v5, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lg4/c;

    invoke-interface {v3, v5}, Lg4/d;->d([Lg4/c;)V

    :cond_9
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    if-eqz v3, :cond_a

    iget-object v3, p0, Lg4/g$d;->k:Lg4/g;

    invoke-static {v3}, Lg4/g;->e(Lg4/g;)Lg4/d;

    move-result-object v3

    new-array v5, v10, [Lg4/c;

    invoke-interface {v6, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lg4/c;

    array-length v6, v5

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lg4/c;

    invoke-interface {v3, v5}, Lg4/d;->c([Lg4/c;)V

    :cond_a
    new-instance v3, Ln5/k;

    iget-object v5, p0, Lg4/g$d;->k:Lg4/g;

    invoke-static {v5, v4}, Lg4/g;->k(Lg4/g;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    new-array v5, v10, [Lcom/android/launcher3/model/data/AppInfo;

    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ln5/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v9, p0, Lg4/g$d;->h:Ljava/lang/Object;

    iput-object v9, p0, Lg4/g$d;->i:Ljava/lang/Object;

    iput v2, p0, Lg4/g$d;->g:I

    invoke-interface {p1, v3, p0}, Lkotlinx/coroutines/flow/f;->emit(Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_b

    return-object v0

    :cond_b
    :goto_2
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method
