.class public final Lcom/android/launcher3/LauncherPrefs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/LauncherPrefs$Companion;
    }
.end annotation


# static fields
.field public static final ALLOW_ROTATION:Lcom/android/launcher3/ContextualItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/ContextualItem<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final APP_WIDGET_IDS:Lcom/android/launcher3/ConstantItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/ConstantItem<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/android/launcher3/LauncherPrefs$Companion;

.field public static final DB_FILE:Lcom/android/launcher3/ConstantItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/ConstantItem<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEVICE_TYPE:Lcom/android/launcher3/ConstantItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/ConstantItem<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final GRID_NAME:Lcom/android/launcher3/ConstantItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/ConstantItem<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final HOTSEAT_COUNT:Lcom/android/launcher3/ConstantItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/ConstantItem<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final ICON_STATE:Lcom/android/launcher3/ConstantItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/ConstantItem<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MainThreadInitializedObject<",
            "Lcom/android/launcher3/LauncherPrefs;",
            ">;"
        }
    .end annotation
.end field

.field public static final IS_STARTUP_DATA_MIGRATED:Lcom/android/launcher3/ConstantItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/ConstantItem<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final NT_LAST_DUMP_MEMINFO_TIMESTAMP:Lcom/android/launcher3/ConstantItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/ConstantItem<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final OLD_APP_WIDGET_IDS:Lcom/android/launcher3/ConstantItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/ConstantItem<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROMISE_ICON_IDS:Lcom/android/launcher3/ConstantItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/ConstantItem<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESTORE_DEVICE:Lcom/android/launcher3/ConstantItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/ConstantItem<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final TASKBAR_PINNING:Lcom/android/launcher3/ConstantItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/ConstantItem<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final THEMED_ICONS:Lcom/android/launcher3/ConstantItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/ConstantItem<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final WORKSPACE_SIZE:Lcom/android/launcher3/ConstantItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/ConstantItem<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final WORK_EDU_STEP:Lcom/android/launcher3/ConstantItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/ConstantItem<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final deviceProtectedStorageContext:Landroid/content/Context;

.field private final encryptedContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v6, Lcom/android/launcher3/LauncherPrefs$Companion;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Lcom/android/launcher3/LauncherPrefs$Companion;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v6, Lcom/android/launcher3/LauncherPrefs;->Companion:Lcom/android/launcher3/LauncherPrefs$Companion;

    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    sget-object v1, Lcom/android/launcher3/x2;->a:Lcom/android/launcher3/x2;

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/launcher3/LauncherPrefs;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    const-string v0, "pref_icon_shape_path"

    const-string v7, ""

    const/4 v8, 0x1

    invoke-virtual {v6, v0, v7, v8}, Lcom/android/launcher3/LauncherPrefs$Companion;->nonRestorableItem(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/android/launcher3/ConstantItem;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherPrefs;->ICON_STATE:Lcom/android/launcher3/ConstantItem;

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v0, "themed_icons"

    invoke-virtual {v6, v0, v12, v8}, Lcom/android/launcher3/LauncherPrefs$Companion;->backedUpItem(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/android/launcher3/ConstantItem;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherPrefs;->THEMED_ICONS:Lcom/android/launcher3/ConstantItem;

    const-string v1, "promise_icon_ids"

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/LauncherPrefs$Companion;->backedUpItem$default(Lcom/android/launcher3/LauncherPrefs$Companion;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/Object;)Lcom/android/launcher3/ConstantItem;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherPrefs;->PROMISE_ICON_IDS:Lcom/android/launcher3/ConstantItem;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v1, "showed_work_profile_edu"

    move-object v0, v6

    move-object v2, v9

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/LauncherPrefs$Companion;->backedUpItem$default(Lcom/android/launcher3/LauncherPrefs$Companion;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/Object;)Lcom/android/launcher3/ConstantItem;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherPrefs;->WORK_EDU_STEP:Lcom/android/launcher3/ConstantItem;

    const-string v0, "migration_src_workspace_size"

    invoke-virtual {v6, v0, v7, v8}, Lcom/android/launcher3/LauncherPrefs$Companion;->backedUpItem(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/android/launcher3/ConstantItem;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherPrefs;->WORKSPACE_SIZE:Lcom/android/launcher3/ConstantItem;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "migration_src_hotseat_count"

    invoke-virtual {v6, v1, v0, v8}, Lcom/android/launcher3/LauncherPrefs$Companion;->backedUpItem(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/android/launcher3/ConstantItem;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherPrefs;->HOTSEAT_COUNT:Lcom/android/launcher3/ConstantItem;

    const-string v1, "TASKBAR_PINNING_KEY"

    move-object v0, v6

    move-object v2, v12

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/LauncherPrefs$Companion;->backedUpItem$default(Lcom/android/launcher3/LauncherPrefs$Companion;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/Object;)Lcom/android/launcher3/ConstantItem;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherPrefs;->TASKBAR_PINNING:Lcom/android/launcher3/ConstantItem;

    const-string v0, "migration_src_device_type"

    invoke-virtual {v6, v0, v9, v8}, Lcom/android/launcher3/LauncherPrefs$Companion;->backedUpItem(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/android/launcher3/ConstantItem;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherPrefs;->DEVICE_TYPE:Lcom/android/launcher3/ConstantItem;

    const-string v0, "migration_src_db_file"

    invoke-virtual {v6, v0, v7, v8}, Lcom/android/launcher3/LauncherPrefs$Companion;->backedUpItem(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/android/launcher3/ConstantItem;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherPrefs;->DB_FILE:Lcom/android/launcher3/ConstantItem;

    const-string v0, "restored_task_pending"

    invoke-virtual {v6, v0, v9, v8}, Lcom/android/launcher3/LauncherPrefs$Companion;->backedUpItem(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/android/launcher3/ConstantItem;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherPrefs;->RESTORE_DEVICE:Lcom/android/launcher3/ConstantItem;

    const-string v1, "appwidget_ids"

    const-string v2, ""

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/LauncherPrefs$Companion;->backedUpItem$default(Lcom/android/launcher3/LauncherPrefs$Companion;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/Object;)Lcom/android/launcher3/ConstantItem;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherPrefs;->APP_WIDGET_IDS:Lcom/android/launcher3/ConstantItem;

    const-string v1, "appwidget_old_ids"

    const-string v2, ""

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/LauncherPrefs$Companion;->backedUpItem$default(Lcom/android/launcher3/LauncherPrefs$Companion;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/Object;)Lcom/android/launcher3/ConstantItem;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherPrefs;->OLD_APP_WIDGET_IDS:Lcom/android/launcher3/ConstantItem;

    new-instance v0, Lcom/android/launcher3/ConstantItem;

    const-class v18, Ljava/lang/String;

    const-string v14, "idp_grid_name"

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object v13, v0

    invoke-direct/range {v13 .. v18}, Lcom/android/launcher3/ConstantItem;-><init>(Ljava/lang/String;ZLjava/lang/Object;ZLjava/lang/Class;)V

    sput-object v0, Lcom/android/launcher3/LauncherPrefs;->GRID_NAME:Lcom/android/launcher3/ConstantItem;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v4, Lcom/android/launcher3/LauncherPrefs$Companion$ALLOW_ROTATION$1;->INSTANCE:Lcom/android/launcher3/LauncherPrefs$Companion$ALLOW_ROTATION$1;

    const-string v1, "pref_allowRotation"

    const/4 v5, 0x4

    const/4 v7, 0x0

    move-object v0, v6

    move-object v6, v7

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/LauncherPrefs$Companion;->backedUpItem$default(Lcom/android/launcher3/LauncherPrefs$Companion;Ljava/lang/String;Ljava/lang/Class;ZLy5/l;ILjava/lang/Object;)Lcom/android/launcher3/ContextualItem;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherPrefs;->ALLOW_ROTATION:Lcom/android/launcher3/ContextualItem;

    new-instance v0, Lcom/android/launcher3/ConstantItem;

    const-string v10, "is_startup_data_boot_aware"

    const/4 v11, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/16 v15, 0x10

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/android/launcher3/ConstantItem;-><init>(Ljava/lang/String;ZLjava/lang/Object;ZLjava/lang/Class;ILkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/android/launcher3/LauncherPrefs;->IS_STARTUP_DATA_MIGRATED:Lcom/android/launcher3/ConstantItem;

    new-instance v0, Lcom/android/launcher3/ConstantItem;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v2, "nt_last_dump_meminfo_timestamp"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher3/ConstantItem;-><init>(Ljava/lang/String;ZLjava/lang/Object;ZLjava/lang/Class;ILkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/android/launcher3/LauncherPrefs;->NT_LAST_DUMP_MEMINFO_TIMESTAMP:Lcom/android/launcher3/ConstantItem;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "encryptedContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/LauncherPrefs;->encryptedContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/LauncherPrefs;->deviceProtectedStorageContext:Landroid/content/Context;

    return-void
.end method

.method private static final INSTANCE$lambda$23(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;
    .locals 2

    new-instance v0, Lcom/android/launcher3/LauncherPrefs;

    const-string v1, "it"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Lcom/android/launcher3/LauncherPrefs;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic a(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/LauncherPrefs;->INSTANCE$lambda$23(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object p0

    return-object p0
.end method

.method public static final backedUpItem(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/android/launcher3/ConstantItem;
    .locals 1
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

    sget-object v0, Lcom/android/launcher3/LauncherPrefs;->Companion:Lcom/android/launcher3/LauncherPrefs$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/launcher3/LauncherPrefs$Companion;->backedUpItem(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/android/launcher3/ConstantItem;

    move-result-object p0

    return-object p0
.end method

.method private final chooseSharedPreferences(Lcom/android/launcher3/Item;)Landroid/content/SharedPreferences;
    .locals 1

    invoke-static {}, Lcom/android/launcher3/LauncherPrefsKt;->isBootAwareStartupDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/Item;->isBootAware()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherPrefs;->isStartupDataMigrated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/LauncherPrefs;->getBootAwarePrefs()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "bootAwarePrefs"

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherPrefs;->getEncryptedPrefs(Lcom/android/launcher3/Item;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "item.encryptedPrefs"

    :goto_0
    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;
    .locals 1

    sget-object v0, Lcom/android/launcher3/LauncherPrefs;->Companion:Lcom/android/launcher3/LauncherPrefs$Companion;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherPrefs$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object p0

    return-object p0
.end method

.method private final getBootAwarePrefs()Landroid/content/SharedPreferences;
    .locals 2

    iget-object p0, p0, Lcom/android/launcher3/LauncherPrefs;->deviceProtectedStorageContext:Landroid/content/Context;

    const-string v0, "boot_aware_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static final getDevicePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1

    sget-object v0, Lcom/android/launcher3/LauncherPrefs;->Companion:Lcom/android/launcher3/LauncherPrefs$Companion;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherPrefs$Companion;->getDevicePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private final getEncryptedPrefs(Lcom/android/launcher3/Item;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/LauncherPrefs;->encryptedContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/launcher3/Item;->getSharedPrefFile()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private final getInner(Lcom/android/launcher3/Item;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/launcher3/Item;",
            "TT;)TT;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherPrefs;->chooseSharedPreferences(Lcom/android/launcher3/Item;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/launcher3/Item;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher3/Item;->getSharedPrefKey()Ljava/lang/String;

    move-result-object p1

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    :cond_0
    invoke-interface {p0, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_4

    :cond_1
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    const-class v1, Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/android/launcher3/Item;->getSharedPrefKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_4

    :cond_3
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_1

    :cond_4
    const-class v1, Ljava/lang/Integer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/android/launcher3/Item;->getSharedPrefKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_4

    :cond_5
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v3

    goto :goto_2

    :cond_6
    const-class v1, Ljava/lang/Float;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_2
    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/android/launcher3/Item;->getSharedPrefKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_4

    :cond_7
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_3

    :cond_8
    const-class v1, Ljava/lang/Long;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    :goto_3
    if-eqz v3, :cond_9

    invoke-virtual {p1}, Lcom/android/launcher3/Item;->getSharedPrefKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Long"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_4

    :cond_9
    const-class v1, Ljava/util/Set;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/android/launcher3/Item;->getSharedPrefKey()Ljava/lang/String;

    move-result-object p1

    instance-of v0, p2, Ljava/util/Set;

    if-eqz v0, :cond_a

    move-object v2, p2

    check-cast v2, Ljava/util/Set;

    :cond_a
    invoke-interface {p0, p1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    :goto_4
    return-object p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "item type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/launcher3/Item;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not compatible with sharedPref methods"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1

    sget-object v0, Lcom/android/launcher3/LauncherPrefs;->Companion:Lcom/android/launcher3/LauncherPrefs$Companion;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherPrefs$Companion;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static final nonRestorableItem(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/android/launcher3/ConstantItem;
    .locals 1
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

    sget-object v0, Lcom/android/launcher3/LauncherPrefs;->Companion:Lcom/android/launcher3/LauncherPrefs$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/launcher3/LauncherPrefs$Companion;->nonRestorableItem(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/android/launcher3/ConstantItem;

    move-result-object p0

    return-object p0
.end method

.method private final prepareToPutValues([Ln5/k;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ln5/k<",
            "+",
            "Lcom/android/launcher3/Item;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/SharedPreferences$Editor;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    invoke-virtual {v4}, Ln5/k;->c()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/Item;

    invoke-direct {p0, v5}, Lcom/android/launcher3/LauncherPrefs;->getEncryptedPrefs(Lcom/android/launcher3/Item;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lo5/d0;->p(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/LauncherPrefsKt;->isBootAwareStartupDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v3, p1

    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v4, p1, v2

    invoke-virtual {v4}, Ln5/k;->c()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/Item;

    invoke-virtual {v5}, Lcom/android/launcher3/Item;->isBootAware()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/android/launcher3/LauncherPrefs;->getBootAwarePrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln5/k;

    const-string v4, "prepareToPutValues$lambda$6$lambda$5$lambda$4"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ln5/k;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/Item;

    invoke-virtual {v3}, Ln5/k;->d()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, v4, v3}, Lcom/android/launcher3/LauncherPrefs;->putValue(Landroid/content/SharedPreferences$Editor;Lcom/android/launcher3/Item;Ljava/lang/Object;)Landroid/content/SharedPreferences$Editor;

    goto :goto_3

    :cond_5
    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    return-object p1
.end method

.method private final prepareToRemove([Lcom/android/launcher3/Item;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/android/launcher3/Item;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/SharedPreferences$Editor;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    invoke-direct {p0, v4}, Lcom/android/launcher3/LauncherPrefs;->getEncryptedPrefs(Lcom/android/launcher3/Item;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lo5/d0;->p(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/LauncherPrefsKt;->isBootAwareStartupDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v3, p1

    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v4, p1, v2

    invoke-virtual {v4}, Lcom/android/launcher3/Item;->isBootAware()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/android/launcher3/LauncherPrefs;->getBootAwarePrefs()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/Item;

    invoke-virtual {v2}, Lcom/android/launcher3/Item;->getSharedPrefKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_3

    :cond_5
    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    return-object p0
.end method

.method private final putValue(Landroid/content/SharedPreferences$Editor;Lcom/android/launcher3/Item;Ljava/lang/Object;)Landroid/content/SharedPreferences$Editor;
    .locals 3

    invoke-virtual {p2}, Lcom/android/launcher3/Item;->getType()Ljava/lang/Class;

    move-result-object p0

    const-class v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/android/launcher3/Item;->getSharedPrefKey()Ljava/lang/String;

    move-result-object p0

    instance-of p2, p3, Ljava/lang/String;

    if-eqz p2, :cond_0

    move-object v1, p3

    check-cast v1, Ljava/lang/String;

    :cond_0
    invoke-interface {p1, p0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "putString(item.sharedPrefKey, value as? String)"

    :goto_0
    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    const-class v0, Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/android/launcher3/Item;->getSharedPrefKey()Ljava/lang/String;

    move-result-object p0

    const-string p2, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, p0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "putBoolean(item.sharedPrefKey, value as Boolean)"

    goto :goto_0

    :cond_3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_2

    :cond_4
    const-class v0, Ljava/lang/Integer;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lcom/android/launcher3/Item;->getSharedPrefKey()Ljava/lang/String;

    move-result-object p0

    const-string p2, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "putInt(item.sharedPrefKey, value as Int)"

    goto :goto_0

    :cond_5
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    goto :goto_3

    :cond_6
    const-class v0, Ljava/lang/Float;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_3
    if-eqz v0, :cond_7

    invoke-virtual {p2}, Lcom/android/launcher3/Item;->getSharedPrefKey()Ljava/lang/String;

    move-result-object p0

    const-string p2, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {p1, p0, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "putFloat(item.sharedPrefKey, value as Float)"

    goto :goto_0

    :cond_7
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    const-class v0, Ljava/lang/Long;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :goto_4
    if-eqz v2, :cond_9

    invoke-virtual {p2}, Lcom/android/launcher3/Item;->getSharedPrefKey()Ljava/lang/String;

    move-result-object p0

    const-string p2, "null cannot be cast to non-null type kotlin.Long"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-interface {p1, p0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "putLong(item.sharedPrefKey, value as Long)"

    goto/16 :goto_0

    :cond_9
    const-class v0, Ljava/util/Set;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    invoke-virtual {p2}, Lcom/android/launcher3/Item;->getSharedPrefKey()Ljava/lang/String;

    move-result-object p0

    instance-of p2, p3, Ljava/util/Set;

    if-eqz p2, :cond_a

    move-object v1, p3

    check-cast v1, Ljava/util/Set;

    :cond_a
    invoke-interface {p1, p0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "putStringSet(item.shared\u2026y, value as? Set<String>)"

    goto/16 :goto_0

    :goto_5
    return-object p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "item type: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/launcher3/Item;->getType()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is not compatible with sharedPref methods"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final varargs addListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;[Lcom/android/launcher3/Item;)V
    .locals 4

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "items"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    invoke-direct {p0, v3}, Lcom/android/launcher3/LauncherPrefs;->chooseSharedPreferences(Lcom/android/launcher3/Item;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lo5/j;->C(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/SharedPreferences;

    invoke-interface {p2, p1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final get(Lcom/android/launcher3/ConstantItem;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/launcher3/ConstantItem<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/ConstantItem;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/LauncherPrefs;->getInner(Lcom/android/launcher3/Item;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final get(Lcom/android/launcher3/ContextualItem;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/launcher3/ContextualItem<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/LauncherPrefs;->encryptedContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/ContextualItem;->defaultValueFromContext(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/LauncherPrefs;->getInner(Lcom/android/launcher3/Item;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final varargs has([Lcom/android/launcher3/Item;)Z
    .locals 7

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    invoke-direct {p0, v4}, Lcom/android/launcher3/LauncherPrefs;->chooseSharedPreferences(Lcom/android/launcher3/Item;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    instance-of v3, p1, Ljava/util/Collection;

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/Item;

    invoke-virtual {v3}, Lcom/android/launcher3/Item;->getSharedPrefKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    xor-int/2addr v3, v0

    if-eqz v3, :cond_4

    move v0, v2

    :cond_5
    :goto_1
    if-nez v0, :cond_2

    return v2

    :cond_6
    return v0
.end method

.method public final isStartupDataMigrated()Z
    .locals 2

    invoke-direct {p0}, Lcom/android/launcher3/LauncherPrefs;->getBootAwarePrefs()Landroid/content/SharedPreferences;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/LauncherPrefs;->IS_STARTUP_DATA_MIGRATED:Lcom/android/launcher3/ConstantItem;

    invoke-virtual {v0}, Lcom/android/launcher3/ConstantItem;->getSharedPrefKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/launcher3/ConstantItem;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final migrateStartupDataToDeviceProtectedStorage()V
    .locals 4

    invoke-static {}, Lcom/android/launcher3/LauncherPrefsKt;->isBootAwareStartupDataEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "LauncherPrefs"

    const-string v1, "Migrating data to unencrypted shared preferences to enable preloading while the user is locked the next time the device reboots."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/launcher3/LauncherPrefs;->getBootAwarePrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/LauncherPrefsKt;->access$getBOOT_AWARE_ITEMS$p()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/ConstantItem;

    const-string v3, "migrateStartupDataToDevi\u2026orage$lambda$22$lambda$21"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/LauncherPrefs;->get(Lcom/android/launcher3/ConstantItem;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/launcher3/LauncherPrefs;->putValue(Landroid/content/SharedPreferences$Editor;Lcom/android/launcher3/Item;Ljava/lang/Object;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/android/launcher3/LauncherPrefs;->IS_STARTUP_DATA_MIGRATED:Lcom/android/launcher3/ConstantItem;

    invoke-virtual {p0}, Lcom/android/launcher3/ConstantItem;->getSharedPrefKey()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final put(Lcom/android/launcher3/Item;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/launcher3/Item;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ln5/k;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/Item;->to(Ljava/lang/Object;)Ln5/k;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherPrefs;->put([Ln5/k;)V

    return-void
.end method

.method public final varargs put([Ln5/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ln5/k<",
            "+",
            "Lcom/android/launcher3/Item;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "itemsToValues"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherPrefs;->prepareToPutValues([Ln5/k;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final varargs putSync([Ln5/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ln5/k<",
            "+",
            "Lcom/android/launcher3/Item;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "itemsToValues"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherPrefs;->prepareToPutValues([Ln5/k;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final varargs remove([Lcom/android/launcher3/Item;)V
    .locals 1

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherPrefs;->prepareToRemove([Lcom/android/launcher3/Item;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final varargs removeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;[Lcom/android/launcher3/Item;)V
    .locals 4

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "items"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    invoke-direct {p0, v3}, Lcom/android/launcher3/LauncherPrefs;->chooseSharedPreferences(Lcom/android/launcher3/Item;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lo5/j;->C(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/SharedPreferences;

    invoke-interface {p2, p1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final varargs removeSync([Lcom/android/launcher3/Item;)V
    .locals 1

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherPrefs;->prepareToRemove([Lcom/android/launcher3/Item;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_0
    return-void
.end method
