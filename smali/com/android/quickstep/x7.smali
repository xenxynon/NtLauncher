.class public final synthetic Lcom/android/quickstep/x7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic a:Lcom/android/quickstep/x7;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/quickstep/x7;

    invoke-direct {v0}, Lcom/android/quickstep/x7;-><init>()V

    sput-object v0, Lcom/android/quickstep/x7;->a:Lcom/android/quickstep/x7;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {p1}, Lcom/android/quickstep/TopTaskTracker;->T(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p0

    return p0
.end method
