.class final Lcom/nothing/launcher/popup/NTPopupContainer$a$b;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/launcher/popup/NTPopupContainer$a;->c(Landroid/view/View;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/nothing/launcher/popup/NTPopupContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/l<",
        "Lcom/android/launcher3/popup/SystemShortcut<",
        "*>;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final g:Lcom/nothing/launcher/popup/NTPopupContainer$a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nothing/launcher/popup/NTPopupContainer$a$b;

    invoke-direct {v0}, Lcom/nothing/launcher/popup/NTPopupContainer$a$b;-><init>()V

    sput-object v0, Lcom/nothing/launcher/popup/NTPopupContainer$a$b;->g:Lcom/nothing/launcher/popup/NTPopupContainer$a$b;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/launcher3/popup/SystemShortcut;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/popup/SystemShortcut<",
            "*>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/launcher3/popup/SystemShortcut;

    invoke-virtual {p0, p1}, Lcom/nothing/launcher/popup/NTPopupContainer$a$b;->a(Lcom/android/launcher3/popup/SystemShortcut;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
