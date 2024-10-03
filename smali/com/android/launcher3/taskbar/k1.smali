.class public final synthetic Lcom/android/launcher3/taskbar/k1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic g:Lcom/android/launcher3/taskbar/k1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/taskbar/k1;

    invoke-direct {v0}, Lcom/android/launcher3/taskbar/k1;-><init>()V

    sput-object v0, Lcom/android/launcher3/taskbar/k1;->g:Lcom/android/launcher3/taskbar/k1;

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

    check-cast p1, Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/TaskbarControllers;->c(Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;)V

    return-void
.end method
