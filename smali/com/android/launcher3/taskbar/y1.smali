.class public final synthetic Lcom/android/launcher3/taskbar/y1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/MultiPropertyFactory$FloatBiFunction;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/taskbar/y1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/taskbar/y1;

    invoke-direct {v0}, Lcom/android/launcher3/taskbar/y1;-><init>()V

    sput-object v0, Lcom/android/launcher3/taskbar/y1;->a:Lcom/android/launcher3/taskbar/y1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(FF)F
    .locals 0

    invoke-static {p1, p2}, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->b(FF)F

    move-result p0

    return p0
.end method
