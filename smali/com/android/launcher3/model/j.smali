.class public final synthetic Lcom/android/launcher3/model/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/LauncherModel$CallbackTask;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/model/j;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/model/j;

    invoke-direct {v0}, Lcom/android/launcher3/model/j;-><init>()V

    sput-object v0, Lcom/android/launcher3/model/j;->a:Lcom/android/launcher3/model/j;

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

    invoke-static {p1}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->j(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method
