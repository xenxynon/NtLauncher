.class public final Lcom/android/launcher3/LauncherPrefs$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/LauncherPrefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/LauncherPrefs$Companion;-><init>()V

    return-void
.end method

.method public static synthetic backedUpItem$default(Lcom/android/launcher3/LauncherPrefs$Companion;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/Object;)Lcom/android/launcher3/ConstantItem;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/LauncherPrefs$Companion;->backedUpItem(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/android/launcher3/ConstantItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic backedUpItem$default(Lcom/android/launcher3/LauncherPrefs$Companion;Ljava/lang/String;Ljava/lang/Class;ZLy5/l;ILjava/lang/Object;)Lcom/android/launcher3/ContextualItem;
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher3/LauncherPrefs$Companion;->backedUpItem(Ljava/lang/String;Ljava/lang/Class;ZLy5/l;)Lcom/android/launcher3/ContextualItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final backedUpItem(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/android/launcher3/ConstantItem;
    .locals 8
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;Z)",
            "Lcom/android/launcher3/ConstantItem<",
            "TT;>;"
        }
    .end annotation

    const-string p0, "sharedPrefKey"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/launcher3/ConstantItem;

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/ConstantItem;-><init>(Ljava/lang/String;ZLjava/lang/Object;ZLjava/lang/Class;ILkotlin/jvm/internal/i;)V

    return-object p0
.end method

.method public final backedUpItem(Ljava/lang/String;Ljava/lang/Class;ZLy5/l;)Lcom/android/launcher3/ContextualItem;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+TT;>;Z",
            "Ly5/l<",
            "-",
            "Landroid/content/Context;",
            "+TT;>;)",
            "Lcom/android/launcher3/ContextualItem<",
            "TT;>;"
        }
    .end annotation

    const-string p0, "sharedPrefKey"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "type"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "defaultValueFromContext"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/launcher3/ContextualItem;

    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    move v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/ContextualItem;-><init>(Ljava/lang/String;ZLy5/l;ZLjava/lang/Class;)V

    return-object p0
.end method

.method public final get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/LauncherPrefs;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "INSTANCE.get(context)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/LauncherPrefs;

    return-object p0
.end method

.method public final getDevicePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "com.android.launcher3.device.prefs"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "context.applicationConte\u2026ODE_PRIVATE\n            )"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "com.android.launcher3.prefs"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "context.applicationConte\u2026ODE_PRIVATE\n            )"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final nonRestorableItem(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/android/launcher3/ConstantItem;
    .locals 8
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;Z)",
            "Lcom/android/launcher3/ConstantItem<",
            "TT;>;"
        }
    .end annotation

    const-string p0, "sharedPrefKey"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/launcher3/ConstantItem;

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/ConstantItem;-><init>(Ljava/lang/String;ZLjava/lang/Object;ZLjava/lang/Class;ILkotlin/jvm/internal/i;)V

    return-object p0
.end method
