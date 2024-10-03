.class public final synthetic Lcom/android/launcher3/views/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field public static final synthetic g:Lcom/android/launcher3/views/u;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/views/u;

    invoke-direct {v0}, Lcom/android/launcher3/views/u;-><init>()V

    sput-object v0, Lcom/android/launcher3/views/u;->g:Lcom/android/launcher3/views/u;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 0

    invoke-static {p1}, Lcom/android/launcher3/views/OptionsPopupView;->e(Landroid/view/View;)Z

    move-result p0

    return p0
.end method
