.class public final synthetic Lcom/android/launcher3/taskbar/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntPredicate;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/taskbar/g0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/taskbar/g0;

    invoke-direct {v0}, Lcom/android/launcher3/taskbar/g0;-><init>()V

    sput-object v0, Lcom/android/launcher3/taskbar/g0;->a:Lcom/android/launcher3/taskbar/g0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 0

    invoke-static {p1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->q(I)Z

    move-result p0

    return p0
.end method