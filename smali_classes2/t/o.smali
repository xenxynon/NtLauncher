.class public final synthetic Lt/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic g:Lt/o;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lt/o;

    invoke-direct {v0}, Lt/o;-><init>()V

    sput-object v0, Lt/o;->g:Lt/o;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/view/MotionEvent;

    invoke-static {p1}, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->b(Landroid/view/MotionEvent;)V

    return-void
.end method
