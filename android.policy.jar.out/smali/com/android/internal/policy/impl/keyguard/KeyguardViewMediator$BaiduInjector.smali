.class public Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$BaiduInjector;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaiduInjector"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1901
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static processStatusBarExpandEnable(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;I)V
    .locals 2
    .parameter "keyguardViewMediator"
    .parameter "flags"

    .prologue
    .line 1904
    move v0, p1

    .line 1905
    .local v0, f:I
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$3400()Z

    move-result v1

    if-eqz v1, :cond_0

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BaiduInjector;->isStatusBarExpandEnable(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1906
    const/high16 v1, 0x1

    or-int/2addr v0, v1

    .line 1908
    :cond_0
    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$3500(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Landroid/app/StatusBarManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1909
    return-void
.end method
