.class public final synthetic Lcom/android/launcher3/taskbar/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntPredicate;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/taskbar/w;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/taskbar/w;

    invoke-direct {v0}, Lcom/android/launcher3/taskbar/w;-><init>()V

    sput-object v0, Lcom/android/launcher3/taskbar/w;->a:Lcom/android/launcher3/taskbar/w;

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

    invoke-static {p1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->d(I)Z

    move-result p0

    return p0
.end method
