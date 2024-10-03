.class public final synthetic Lcom/android/quickstep/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;


# static fields
.field public static final synthetic a:Lcom/android/quickstep/s0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/quickstep/s0;

    invoke-direct {v0}, Lcom/android/quickstep/s0;-><init>()V

    sput-object v0, Lcom/android/quickstep/s0;->a:Lcom/android/quickstep/s0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createActivityInterface(J)V
    .locals 0

    invoke-static {p1, p2}, Lcom/android/quickstep/AbsSwipeUpHandler;->z(J)V

    return-void
.end method
