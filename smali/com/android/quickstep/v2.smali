.class public final synthetic Lcom/android/quickstep/v2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/quickstep/MultiStateCallback$TrackedEventsMapper;


# static fields
.field public static final synthetic a:Lcom/android/quickstep/v2;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/quickstep/v2;

    invoke-direct {v0}, Lcom/android/quickstep/v2;-><init>()V

    sput-object v0, Lcom/android/quickstep/v2;->a:Lcom/android/quickstep/v2;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTrackedEventForState(I)Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;
    .locals 0

    invoke-static {p1}, Lcom/android/quickstep/MultiStateCallback;->b(I)Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    move-result-object p0

    return-object p0
.end method
