.class public final synthetic Lcom/android/quickstep/r4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic a:Lcom/android/quickstep/r4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/quickstep/r4;

    invoke-direct {v0}, Lcom/android/quickstep/r4;-><init>()V

    sput-object v0, Lcom/android/quickstep/r4;->a:Lcom/android/quickstep/r4;

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

    check-cast p1, Landroid/view/RemoteAnimationTarget;

    invoke-static {p1}, Lcom/android/quickstep/RecentsAnimationCallbacks;->g(Landroid/view/RemoteAnimationTarget;)Z

    move-result p0

    return p0
.end method
