.class public final Ls4/b;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls4/b$c;
    }
.end annotation


# static fields
.field public static final d:Ls4/b$c;

.field private static final e:Landroidx/lifecycle/ViewModelProvider$Factory;


# instance fields
.field private final a:Landroid/app/Application;

.field private final b:Ln5/e;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ls4/b$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ls4/b$c;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Ls4/b;->d:Ls4/b$c;

    new-instance v0, Landroidx/lifecycle/viewmodel/InitializerViewModelFactoryBuilder;

    invoke-direct {v0}, Landroidx/lifecycle/viewmodel/InitializerViewModelFactoryBuilder;-><init>()V

    sget-object v1, Ls4/b$b;->g:Ls4/b$b;

    const-class v2, Ls4/b;

    invoke-static {v2}, Lkotlin/jvm/internal/b0;->b(Ljava/lang/Class;)Lf6/c;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroidx/lifecycle/viewmodel/InitializerViewModelFactoryBuilder;->addInitializer(Lf6/c;Ly5/l;)V

    invoke-virtual {v0}, Landroidx/lifecycle/viewmodel/InitializerViewModelFactoryBuilder;->build()Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v0

    sput-object v0, Ls4/b;->e:Landroidx/lifecycle/ViewModelProvider$Factory;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 6

    const-string v0, "applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Ls4/b;->a:Landroid/app/Application;

    new-instance p1, Ls4/b$e;

    invoke-direct {p1, p0}, Ls4/b$e;-><init>(Ls4/b;)V

    invoke-static {p1}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object p1

    iput-object p1, p0, Ls4/b;->b:Ln5/e;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Li6/m0;

    move-result-object v0

    new-instance v3, Ls4/b$a;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Ls4/b$a;-><init>(Ls4/b;Lq5/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Li6/h;->b(Li6/m0;Lq5/g;Li6/o0;Ly5/p;ILjava/lang/Object;)Li6/v1;

    return-void
.end method

.method public static final synthetic a(Ls4/b;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Ls4/b;->g(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static final synthetic b(Ls4/b;Ljava/util/List;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ls4/b;->h(Ljava/util/List;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static final synthetic c(Ls4/b;Ljava/lang/String;Ljava/util/List;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Ls4/b;->i(Ljava/lang/String;Ljava/util/List;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static final synthetic d(Ls4/b;)Landroid/app/Application;
    .locals 0

    iget-object p0, p0, Ls4/b;->a:Landroid/app/Application;

    return-object p0
.end method

.method public static final synthetic e()Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 1

    sget-object v0, Ls4/b;->e:Landroidx/lifecycle/ViewModelProvider$Factory;

    return-object v0
.end method

.method public static final synthetic f(Ls4/b;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    invoke-direct {p0}, Ls4/b;->k()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    return-object p0
.end method

.method private final g(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lr4/a;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Ls4/b;->a:Landroid/app/Application;

    const v0, 0x7f1201b5

    invoke-virtual {p0, v0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lr4/b;->h:Lr4/b;

    new-instance p0, Lr4/a;

    const v0, 0x7f0802f7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v0, "getString(R.string.nothi\u2026le_iconpack_add_new_text)"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, ""

    const v4, 0x7f080208

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lr4/a;-><init>(Ljava/lang/String;Ljava/lang/Object;ILjava/lang/String;Lr4/b;Z)V

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final h(Ljava/util/List;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lv3/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lr4/a;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv3/a;

    sget-object v2, Lr4/a;->g:Lr4/a$a;

    iget-object v3, p0, Ls4/b;->a:Landroid/app/Application;

    invoke-virtual {v2, v3, v0, v1}, Lr4/a$a;->a(Landroid/content/Context;Ljava/lang/String;Lv3/a;)Lr4/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lr4/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ls4/b;->c:I

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final i(Ljava/lang/String;Ljava/util/List;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/ArrayList;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lv3/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lr4/a;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Lcom/android/launcher3/icons/BaseIconFactory;

    iget-object v2, v0, Ls4/b;->a:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v4, v0, Ls4/b;->a:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07012f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/launcher3/icons/BaseIconFactory;-><init>(Landroid/content/Context;II)V

    invoke-static/range {p3 .. p3}, Lo5/d0;->q(Ljava/util/Map;)Lg6/g;

    move-result-object v2

    new-instance v3, Ls4/b$d;

    move-object/from16 v4, p2

    invoke-direct {v3, v4}, Ls4/b$d;-><init>(Ljava/util/List;)V

    invoke-static {v2, v3}, Lg6/j;->k(Lg6/g;Ly5/l;)Lg6/g;

    move-result-object v2

    invoke-interface {v2}, Lg6/g;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv3/a;

    sget-object v5, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {v5}, Lo3/b$b;->a()Lo3/b;

    move-result-object v5

    invoke-virtual {v3}, Lv3/a;->i()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/launcher3/LauncherAppState;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v8, v0, Ls4/b;->a:Landroid/app/Application;

    invoke-virtual {v7, v8}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v7}, Lcom/android/launcher3/LauncherAppState;->getIconProvider()Lcom/android/launcher3/icons/LauncherIconProvider;

    move-result-object v7

    const-string v8, "INSTANCE.get(applicationContext).iconProvider"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6, v1, v7}, Lo3/b;->i(Ljava/lang/String;Lcom/android/launcher3/icons/BaseIconFactory;Lcom/android/launcher3/icons/IconProvider;)Landroid/graphics/Bitmap;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-virtual {v3}, Lv3/a;->i()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Lv3/a;->e()Ljava/lang/String;

    move-result-object v13

    sget-object v14, Lr4/b;->g:Lr4/b;

    move-object/from16 v3, p1

    invoke-static {v3, v4}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    new-instance v4, Lr4/a;

    const v12, 0x7f0802f9

    move-object v9, v4

    invoke-direct/range {v9 .. v15}, Lr4/a;-><init>(Ljava/lang/String;Ljava/lang/Object;ILjava/lang/String;Lr4/b;Z)V

    move-object/from16 v5, p4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lr4/a;->f()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iput v4, v0, Ls4/b;->c:I

    goto :goto_0

    :cond_1
    move-object/from16 v3, p1

    move-object/from16 v5, p4

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final k()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lr4/a;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Ls4/b;->b:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method


# virtual methods
.method public final j()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lr4/a;",
            ">;>;"
        }
    .end annotation

    invoke-direct {p0}, Ls4/b;->k()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    return-object p0
.end method

.method public final l()I
    .locals 0

    iget p0, p0, Ls4/b;->c:I

    return p0
.end method
