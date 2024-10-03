.class public final synthetic Lcom/android/launcher3/touch/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final synthetic g:Lcom/android/launcher3/touch/k;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/touch/k;

    invoke-direct {v0}, Lcom/android/launcher3/touch/k;-><init>()V

    sput-object v0, Lcom/android/launcher3/touch/k;->g:Lcom/android/launcher3/touch/k;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    invoke-static {p1}, Lcom/android/launcher3/touch/ItemClickHandler;->f(Landroid/view/View;)V

    return-void
.end method
