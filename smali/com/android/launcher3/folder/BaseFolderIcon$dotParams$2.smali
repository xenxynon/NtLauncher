.class final Lcom/android/launcher3/folder/BaseFolderIcon$dotParams$2;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/BaseFolderIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/a<",
        "Lcom/android/launcher3/icons/DotRenderer$DrawParams;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/folder/BaseFolderIcon$dotParams$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/folder/BaseFolderIcon$dotParams$2;

    invoke-direct {v0}, Lcom/android/launcher3/folder/BaseFolderIcon$dotParams$2;-><init>()V

    sput-object v0, Lcom/android/launcher3/folder/BaseFolderIcon$dotParams$2;->INSTANCE:Lcom/android/launcher3/folder/BaseFolderIcon$dotParams$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/android/launcher3/icons/DotRenderer$DrawParams;
    .locals 0

    new-instance p0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    invoke-direct {p0}, Lcom/android/launcher3/icons/DotRenderer$DrawParams;-><init>()V

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon$dotParams$2;->invoke()Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    move-result-object p0

    return-object p0
.end method
