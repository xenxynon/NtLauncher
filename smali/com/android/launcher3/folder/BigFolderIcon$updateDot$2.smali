.class final Lcom/android/launcher3/folder/BigFolderIcon$updateDot$2;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/BigFolderIcon;->updateDot(Ly5/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/l<",
        "Landroid/view/View;",
        "Lcom/android/launcher3/BubbleTextView;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/folder/BigFolderIcon$updateDot$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/folder/BigFolderIcon$updateDot$2;

    invoke-direct {v0}, Lcom/android/launcher3/folder/BigFolderIcon$updateDot$2;-><init>()V

    sput-object v0, Lcom/android/launcher3/folder/BigFolderIcon$updateDot$2;->INSTANCE:Lcom/android/launcher3/folder/BigFolderIcon$updateDot$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroid/view/View;)Lcom/android/launcher3/BubbleTextView;
    .locals 0

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/BubbleTextView;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/BigFolderIcon$updateDot$2;->invoke(Landroid/view/View;)Lcom/android/launcher3/BubbleTextView;

    move-result-object p0

    return-object p0
.end method
