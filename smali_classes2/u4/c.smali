.class public final Lu4/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lu4/c;

.field private static final b:Landroid/content/Context;

.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lu4/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final e:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lu4/c;

    invoke-direct {v0}, Lu4/c;-><init>()V

    sput-object v0, Lu4/c;->a:Lu4/c;

    sget-object v1, Lv2/a;->g:Lv2/a$a;

    invoke-virtual {v1}, Lv2/a$a;->a()Landroid/app/Application;

    move-result-object v1

    sput-object v1, Lu4/c;->b:Landroid/content/Context;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lu4/c;->c:Ljava/util/List;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sget-object v3, Lu4/d;->a:Lu4/d;

    invoke-virtual {v3, v1}, Lu4/d;->a(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sput-object v2, Lu4/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v1, Lu4/b;->g:Lu4/b;

    sput-object v1, Lu4/c;->e:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-direct {v0}, Lu4/c;->e()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lu4/c;->g(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method private final d()V
    .locals 1

    sget-object p0, Lu4/c;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu4/a;

    invoke-interface {v0}, Lu4/a;->onScrollableChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final e()V
    .locals 1

    sget-object p0, Lcom/android/launcher3/LauncherPrefs;->Companion:Lcom/android/launcher3/LauncherPrefs$Companion;

    sget-object v0, Lu4/c;->b:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherPrefs$Companion;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    sget-object v0, Lu4/c;->e:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method private static final g(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    const-string p0, "nothing_wallpaper_scrollable"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lu4/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object p1, Lu4/d;->a:Lu4/d;

    sget-object v0, Lu4/c;->b:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lu4/d;->a(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object p0, Lu4/c;->a:Lu4/c;

    invoke-direct {p0}, Lu4/c;->d()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final b(Lu4/a;)V
    .locals 0

    const-string p0, "listener"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lu4/c;->c:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c()Z
    .locals 0

    sget-object p0, Lu4/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public final f(Lu4/a;)V
    .locals 0

    const-string p0, "listener"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lu4/c;->c:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
