.class public final synthetic Lcom/android/quickstep/views/k2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic a:Lcom/android/quickstep/views/k2;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/quickstep/views/k2;

    invoke-direct {v0}, Lcom/android/quickstep/views/k2;-><init>()V

    sput-object v0, Lcom/android/quickstep/views/k2;->a:Lcom/android/quickstep/views/k2;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/android/quickstep/views/TaskView;->l(I)[Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    return-object p0
.end method
