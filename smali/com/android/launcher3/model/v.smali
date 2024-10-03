.class public final synthetic Lcom/android/launcher3/model/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/LauncherModel$CallbackTask;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/model/v;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/model/v;

    invoke-direct {v0}, Lcom/android/launcher3/model/v;-><init>()V

    sput-object v0, Lcom/android/launcher3/model/v;->a:Lcom/android/launcher3/model/v;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0

    invoke-static {p1}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->i(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method
