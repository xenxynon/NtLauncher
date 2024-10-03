.class public final synthetic Lcom/android/launcher3/views/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/views/StickyHeaderLayout$MotionEventProxyMethod;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/views/z;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/views/z;

    invoke-direct {v0}, Lcom/android/launcher3/views/z;-><init>()V

    sput-object v0, Lcom/android/launcher3/views/z;->a:Lcom/android/launcher3/views/z;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final proxyEvent(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
