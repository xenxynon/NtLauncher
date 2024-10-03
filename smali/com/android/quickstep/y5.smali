.class public final synthetic Lcom/android/quickstep/y5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic a:Lcom/android/quickstep/y5;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/quickstep/y5;

    invoke-direct {v0}, Lcom/android/quickstep/y5;-><init>()V

    sput-object v0, Lcom/android/quickstep/y5;->a:Lcom/android/quickstep/y5;

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

    invoke-static {p1}, Lcom/android/quickstep/RemoteTargetGluer;->c(Landroid/view/RemoteAnimationTarget;)Z

    move-result p0

    return p0
.end method
