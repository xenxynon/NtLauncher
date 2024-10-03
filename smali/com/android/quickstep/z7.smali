.class public final synthetic Lcom/android/quickstep/z7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic a:Lcom/android/quickstep/z7;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/quickstep/z7;

    invoke-direct {v0}, Lcom/android/quickstep/z7;-><init>()V

    sput-object v0, Lcom/android/quickstep/z7;->a:Lcom/android/quickstep/z7;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lcom/android/quickstep/TopTaskTracker;->Y()[Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    return-object p0
.end method
