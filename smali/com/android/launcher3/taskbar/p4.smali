.class public final synthetic Lcom/android/launcher3/taskbar/p4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# static fields
.field public static final synthetic g:Lcom/android/launcher3/taskbar/p4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/taskbar/p4;

    invoke-direct {v0}, Lcom/android/launcher3/taskbar/p4;-><init>()V

    sput-object v0, Lcom/android/launcher3/taskbar/p4;->g:Lcom/android/launcher3/taskbar/p4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 0

    invoke-static {p1}, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;->a(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    return-void
.end method
