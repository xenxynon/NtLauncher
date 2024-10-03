.class public final synthetic Lcom/android/launcher3/taskbar/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntPredicate;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/taskbar/x;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/taskbar/x;

    invoke-direct {v0}, Lcom/android/launcher3/taskbar/x;-><init>()V

    sput-object v0, Lcom/android/launcher3/taskbar/x;->a:Lcom/android/launcher3/taskbar/x;

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

    invoke-static {p1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->e(I)Z

    move-result p0

    return p0
.end method
